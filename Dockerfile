FROM node:18.13-alpine

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /app
COPY . /app
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT [ "/app/entrypoint.sh" ]
