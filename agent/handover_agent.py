import json
import random
import os

enb_positions = {
    0: (0.0, 0.0),
    1: (100.0, 0.0),
    2: (50.0, 100.0)
}

def distance(pos1, pos2):
    return ((pos1[0] - pos2[0])**2 + (pos1[1] - pos2[1])**2) ** 0.5

def mock_ue_position(ue_id):
    random.seed(ue_id)
    return (random.uniform(-150, 150), random.uniform(-150, 150))

def select_target_cell(current_cell, ue_pos):
    best, min_dist = None, float('inf')
    for cell_id, pos in enb_positions.items():
        if cell_id == current_cell:
            continue
        d = distance(ue_pos, pos)
        if d < min_dist:
            min_dist = d
            best = cell_id
    return best

def main():
    if not os.path.exists("../data/state.json"):
        print("No state.json found.")
        return

    with open("../data/state.json") as f:
        state = json.load(f)

    actions = []
    for ue_name, info in state.items():
        ue_id = int(ue_name.split('_')[1])
        current_cell = info["cellId"]
        rsrp = info["rsrp"]

        if rsrp < -90:
            ue_pos = mock_ue_position(ue_id)
            target_cell = select_target_cell(current_cell, ue_pos)
            if target_cell is not None:
                actions.append({ "ue": ue_id, "target": target_cell })

    with open("../data/actions.json", "w") as f:
        json.dump({ "handover": actions }, f, indent=2)
        print(f"Wrote {len(actions)} handovers to actions.json")

if __name__ == "__main__":
    main()
