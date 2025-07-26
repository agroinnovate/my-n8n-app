FROM n8nio/n8n:latest

# Переходим в директорию /app как требует Railway
WORKDIR /app

# Принудительно указываем n8n использовать /app/.n8n
ENV N8N_USER_FOLDER=/app/.n8n

# Создаем директорию для данных
USER root
RUN mkdir -p /app/.n8n && chown -R node:node /app/.n8n
USER node

EXPOSE 5678

# Явно указываем команду запуска
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
