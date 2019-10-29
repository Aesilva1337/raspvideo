
FROM node:alpine

# Create app directory
WORKDIR /src/app

# Install app dependencies
COPY package.json package-lock.json* ./

# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json .

RUN npm cache clean --force && npm install

# Bundle app source
COPY . .

ENV NODE_PORT 80

EXPOSE 80

CMD ["npm", "run", "start"]