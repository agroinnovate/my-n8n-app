FROM n8nio/n8n:latest

WORKDIR /home/node

EXPOSE 5678

USER node

CMD ["n8n", "start"]
