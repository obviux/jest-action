FROM node:12.17.0-alpine

RUN apk update && \
    apk upgrade && \
    apk add git openssh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
