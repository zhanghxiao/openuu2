# 使用现有的镜像
FROM ghcr.io/wandb/openui


# 安装cloudflared
RUN apt-get update && apt-get install -y curl && \
    curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && \
    dpkg -i cloudflared.deb && \
    rm cloudflared.deb

# 暴露应用程序端口
EXPOSE 7878

# 启动脚本
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
