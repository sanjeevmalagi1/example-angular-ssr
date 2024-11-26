FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

COPY package.json package-lock.json ./

COPY . .

RUN npm install

RUN npm run build

EXPOSE 4000

# Command to start the SSR server
CMD ["npm", "run", "serve:ssr:angular-ssr"]