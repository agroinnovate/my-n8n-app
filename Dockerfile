FROM n8nio/n8n:latest

WORKDIR /app
ENV N8N_USER_FOLDER=/app/.n8n

USER root
RUN mkdir -p /app/.n8n && chown -R node:node /app/.n8n
USER node

EXPOSE 5678
