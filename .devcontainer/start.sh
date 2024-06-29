#!/bin/bash

# 启动 Cloudflare 隧道
cloudflared tunnel run --token $CLOUDFLARE_TUNNEL_TOKEN &

# 执行默认的 Docker 镜像启动命令
exec "$@"
