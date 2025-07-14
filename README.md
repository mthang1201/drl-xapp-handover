# Deep reinforcement learning - xApp Handover

Tiến độ hoàn thành:
- Môi trường LTE
- Export trạng thái (state.json)
- Python DRL Agent (ra actions.json)
- Handover từ file action

## Kiến trúc tổng thể
```
+--------------------+     +------------------+     +---------------------+
|    ns-3 (C++)      | <-->|  state.json      |<--->|    Python agent     |
| - LTE topology     |     |  actions.json    |     | - DQN / MAB model   |
| - Export state     |     +------------------+     | - reward calc       |
| - Apply actions    |                              | - training loop     |
+--------------------+                              +---------------------+
```