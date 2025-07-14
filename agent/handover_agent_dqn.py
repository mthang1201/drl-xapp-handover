import json
import os
import random
import numpy as np
from collections import deque
import torch
import torch.nn as nn
import torch.optim as optim

STATE_SIZE = 3  # [current_cell, rsrp, ue_id]
ACTION_SIZE = 3  # number of gNBs

class DQN(nn.Module):
    def __init__(self):
        super(DQN, self).__init__()
        self.net = nn.Sequential(
            nn.Linear(STATE_SIZE, 32),
            nn.ReLU(),
            nn.Linear(32, 32),
            nn.ReLU(),
            nn.Linear(32, ACTION_SIZE)
        )

    def forward(self, x):
        return self.net(x)

class Agent:
    def __init__(self):
        self.model = DQN()
        self.target = DQN()
        self.target.load_state_dict(self.model.state_dict())
        self.optimizer = optim.Adam(self.model.parameters(), lr=0.001)
        self.memory = deque(maxlen=1000)
        self.gamma = 0.9
        self.batch_size = 32
        self.steps = 0

    def select_action(self, state, epsilon=0.1):
        if random.random() < epsilon:
            return random.randint(0, ACTION_SIZE - 1)
        state_tensor = torch.FloatTensor(state).unsqueeze(0)
        with torch.no_grad():
            q_values = self.model(state_tensor)
        return int(torch.argmax(q_values))

    def train(self):
        if len(self.memory) < self.batch_size:
            return
        batch = random.sample(self.memory, self.batch_size)
        states, actions, rewards, next_states = zip(*batch)

        states = torch.FloatTensor(states)
        actions = torch.LongTensor(actions).unsqueeze(1)
        rewards = torch.FloatTensor(rewards)
        next_states = torch.FloatTensor(next_states)

        q_values = self.model(states).gather(1, actions).squeeze()
        with torch.no_grad():
            next_q_values = self.target(next_states).max(1)[0]
        target = rewards + self.gamma * next_q_values

        loss = nn.MSELoss()(q_values, target)
        self.optimizer.zero_grad()
        loss.backward()
        self.optimizer.step()

        self.steps += 1
        if self.steps % 10 == 0:
            self.target.load_state_dict(self.model.state_dict())

    def remember(self, state, action, reward, next_state):
        self.memory.append((state, action, reward, next_state))

def parse_state():
    with open("../data/state.json") as f:
        state = json.load(f)
    return state

def run_agent():
    state_data = parse_state()
    agent = Agent()
    actions = []

    for ue_name, info in state_data.items():
        ue_id = int(ue_name.split("_")[1])
        current_cell = info["cellId"]
        rsrp = info["rsrp"]
        state = [current_cell / 3.0, (rsrp + 150) / 100.0, ue_id / 10.0]  # normalize input
        action = agent.select_action(state)
        if action != current_cell:
            actions.append({ "ue": ue_id, "target": action })

    with open("../data/actions.json", "w") as f:
        json.dump({ "handover": actions }, f, indent=2)

if __name__ == "__main__":
    run_agent()