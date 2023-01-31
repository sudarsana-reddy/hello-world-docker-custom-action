FROM node:16.10-alpine

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@2.10.1

RUN chmod +x /app/entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT [ "/bin/bash", "/app/entrypoint.sh" ]