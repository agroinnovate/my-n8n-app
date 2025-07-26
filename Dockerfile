FROM n8nio/n8n:latest

# Создаем директорию для постоянных данных
USER root
RUN mkdir -p /data && chown -R node:node /data
USER node

# Указываем n8n использовать /data для хранения
ENV N8N_USER_FOLDER=/data

EXPOSE 5678

VOLUME ["/data"]
