
FROM node:22-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

RUN npm run build

EXPOSE 3000


CMD ["npm", "start"]