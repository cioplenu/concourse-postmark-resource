FROM node:lts-alpine

RUN apk --no-cache add jq && \
    npm install -g postmark-cli

COPY ./resource /opt/resource
RUN chmod +x /opt/resource/*
