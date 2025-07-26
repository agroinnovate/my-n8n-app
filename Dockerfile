FROM n8nio/n8n:latest

# Создаем директорию /app/.n8n
USER root
RUN mkdir -p /app/.n8n && chown -R node:node /app/.n8n

# Создаем символическую ссылку из стандартного пути n8n на /app/.n8n
RUN mkdir -p /home/node && ln -sf /app/.n8n /home/node/.n8n

USER node

EXPOSE 5678
