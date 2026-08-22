@echo off
cd /d "%~dp0"
set PORT=8765
start http://127.0.0.1:%PORT%
python -m http.server %PORT%
