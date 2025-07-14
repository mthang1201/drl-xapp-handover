#!/bin/bash

EPISODES=10
NS3_DIR="ns-dev"
SCRIPT_NAME="xapp-handover"

echo "🔁 Starting DRL training pipeline for $EPISODES episodes"

for ((ep=1; ep<=EPISODES; ep++)); do
  echo "▶️ Episode $ep"

  # Step 1: Run ns-3 simulation (export state.json)
  echo "📡 Running ns-3 simulation to export state.json"
  cd $NS3_DIR
  ./ns3 run scratch/$SCRIPT_NAME

  # Step 2: Run DRL agent (read state.json, write actions.json, train)
  echo "🧠 Running DRL agent for handover decisions"
  cd ../agent
  python3 handover_agent_dqn_train.py

  echo "✅ Episode $ep done"
  echo ""
  cd ..
done

echo "🎉 Training pipeline completed!"