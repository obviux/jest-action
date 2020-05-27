FROM node:12-buster
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install git openssh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
