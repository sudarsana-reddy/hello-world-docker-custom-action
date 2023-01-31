FROM node:16.10-alpine

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /app
COPY . /app

RUN npm install -g appcenter-cli@2.10.1

RUN chmod u+x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]