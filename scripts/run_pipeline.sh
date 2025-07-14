#!/bin/bash
cd ns-3-dev
./ns3 build

echo "Running ns-3 simulation..."
./ns3 run scratch/xapp-handover

echo "Running agent..."
cd ../agent
python3 handover_agent.py
