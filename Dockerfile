FROM n8nio/n8n:latest

# НЕ меняем WORKDIR - оставляем n8n в стандартной директории
# Но указываем сохранять данные в /app/.n8n для Railway volume
ENV N8N_USER_FOLDER=/app/.n8n

# Создаем директорию для данных
USER root
RUN mkdir -p /app/.n8n && chown -R node:node /app/.n8n
USER node

EXPOSE 5678
