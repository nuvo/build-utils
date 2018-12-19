FROM node:10.7.0-alpine

RUN apk add --no-cache git curl jq \
    && npm config set unsafe-perm true \
    && npm install -g yawn-yaml-cli

RUN addgroup -g 1001 -S build \
    && adduser -u 1001 -D -S -G build build 
USER build
