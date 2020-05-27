FROM node:12-buster
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install git openssh-client

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
