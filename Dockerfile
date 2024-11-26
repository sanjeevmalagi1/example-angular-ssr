FROM node:22-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy source files and build the application
COPY dist .

# Expose the port your server listens on
EXPOSE 4000

# Command to start the SSR server
CMD ["node", "angular-ssr/server/server.mjs"]
