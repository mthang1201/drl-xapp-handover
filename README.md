# Deep reinforcement learning - xApp Handover

## Tiến độ hoàn thành
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

## Cấu trúc thư mục
```
ns3-drl-xapp-handover/
├── ns-3-dev/                    # Thư mục chứa mã nguồn ns-3 (clone từ GitLab)
│   ├── scratch/
│   │   └── xapp-handover.cc     # File mô phỏng chính (C++)
│   └── ...                      # Các thư mục chuẩn của ns-3 (build, src, etc.)
│
├── agent/                       # Thư mục chứa agent DRL hoặc rule-based
│   └── handover_agent.py        # Python script đọc state.json, ghi actions.json
│
├── data/                        # Lưu thông tin trạng thái và hành động
│   ├── state.json               # Trạng thái mạng (do ns-3 export)
│   └── actions.json             # Hành động handover (do agent sinh ra)
│
├── scripts/                     # Script shell để chạy toàn bộ pipeline
│   └── run_pipeline.sh          # Gọi ns-3 → gọi agent → lặp
│
├── README.md                    # Hướng dẫn sử dụng, build, mô phỏng
```
