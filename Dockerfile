FROM n8nio/n8n:latest

# Устанавливаем рабочую директорию
WORKDIR /data

# Устанавливаем переменные окружения
ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Открываем порт
EXPOSE 5678

# Запускаем n8n
CMD ["n8n"]