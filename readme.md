
## go2rtc.exe

ダウンロードしてpublic.batと同じ階層に配置

https://github.com/AlexxIT/go2rtc/

## cloudflared

インストール

powrshell

```powershell
winget install --id Cloudflare.cloudflared
```

## OBS設定

配信設定：WHIP
http://localhost:1984/api/webrtc?dst=livestream


## 起動

`public.bat`起動
cloudflaredでローカルサーバーが公開されて、URLをもらえる
そのURLでストリーミングをみることができます

URLは実行ごとに変わる一時的なもの

```
2024-08-03T03:55:20Z INF Thank you for trying Cloudflare Tunnel. Doing so, without a Cloudflare account, is a quick way to experiment and try it out. However, be aware that these account-less Tunnels have no uptime guarantee. If you intend to use Tunnels in production you should use a pre-created named tunnel by following: https://developers.cloudflare.com/cloudflare-one/connections/connect-apps
2024-08-03T03:55:20Z INF Requesting new quick Tunnel on trycloudflare.com...
2024-08-03T03:55:21Z INF +--------------------------------------------------------------------------------------------+
2024-08-03T03:55:21Z INF |  Your quick Tunnel has been created! Visit it at (it may take some time to be reachable):  |
2024-08-03T03:55:21Z INF |  https://manga-performs-commit-pharmacies.trycloudflare.com                 
               |
2024-08-03T03:55:21Z INF +--------------------------------------------------------------------------------------------+
```
