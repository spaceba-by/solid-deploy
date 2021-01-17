FROM node:fermium-alpine as base
LABEL org.opencontainers.image.source https://github.com/spaceba-by/solid-deploy

RUN adduser -D solid -h /solid
WORKDIR /solid

USER solid

RUN npm install solid-server

EXPOSE 8443
CMD npx solid start
