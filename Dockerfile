FROM n8nio/n8n:latest

COPY workflow.json /workflow.json

CMD sh -c "n8n import:workflow --input=/workflow.json && n8n start"
