FROM nginx:1.15-alpine

ARG ORCHESTRATOR

COPY index-${ORCHESTRATOR}.html /usr/share/nginx/html/index.html

