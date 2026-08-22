#!/bin/bash
cd "$(dirname "$0")"
PORT=8765
python3 -m http.server "$PORT" >/dev/null 2>&1 &
SERVER_PID=$!
sleep 0.5
open "http://127.0.0.1:$PORT"
echo "简历模板已启动：http://127.0.0.1:$PORT （按 Ctrl+C 停止）"
wait "$SERVER_PID"
