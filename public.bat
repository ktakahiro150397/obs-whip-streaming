REM https://github.com/AlexxIT/go2rtc/
REM winget install --id Cloudflare.cloudflared

REM cloudflaredでローカルサーバーを公開
start cloudflared tunnel --url localhost:1984

REM go2rtc起動(別ウィンドウ)
start cmd /k go2rtc.exe

REM OBS : http://localhost:1984/api/webrtc?dst=livestream
