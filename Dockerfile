FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
COPY ./workflows /workflows

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

EXPOSE 5678

USER node
CMD sh -c "n8n import:workflow --separate --input=/workflows && n8n start"
