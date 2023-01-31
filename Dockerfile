FROM node:18.13-alpine

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@2.10.1

RUN chmod 777 /app/entrypoint.sh

ENTRYPOINT [ "/bin/bash", "/app/entrypoint.sh" ]