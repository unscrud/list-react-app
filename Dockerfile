FROM node:21-alpine

# Set working directory
WORKDIR /app

# Install pnpm globally
RUN apk add --no-cache build-base && \
    npm install -g pnpm

# Expose port (optional, adjust based on your application)
EXPOSE 5173

# Command to run your application (replace with your actual command)
CMD pnpm run dev --host

# Set container name
ENV CONTAINER_NAME my-node

# usar para executar o container no modo iterativo
# docker run -p 8080:5173 --name mynode -v "C:\dev\FEV\list-react-app:/app" -it danieldevop/mynode sh

# usar para executar o container em segundo plano
# docker run -p 8080:5173 --name mynode -d -v "C:\dev\FEV\list-react-app:/app" danieldevop/mynode