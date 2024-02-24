FROM node:21-alpine

# Set working directory
WORKDIR /app

# Install pnpm globally
RUN apk add --no-cache build-base && \
    npm install -g pnpm

# Expose port (optional, adjust based on your application)
EXPOSE 3000

# Volume mapping
VOLUME ["~/app:/app"]

# Command to run your application (replace with your actual command)
CMD [ "pnpm", "start" ]

# Set container name
ENV CONTAINER_NAME my-node

# Set hostname to container name
RUN hostname $CONTAINER_NAME
