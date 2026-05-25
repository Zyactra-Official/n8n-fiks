FROM n8nio/n8n:latest

COPY ./workflows /workflows

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

EXPOSE 5678

CMD sh -c "n8n import:workflow --separate --input=/workflows && n8n start"
