FROM n8nio/n8n:latest

USER root

# Устанавливаем переменные окружения
ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Открываем порт
EXPOSE 5678

# Переключаемся обратно на пользователя node
USER node

# Устанавливаем рабочую директорию
WORKDIR /home/node

# Запускаем n8n с полным путем
CMD ["/usr/local/bin/node", "/usr/local/lib/node_modules/n8n/bin/n8n"]