# 1. Use official Node image (based on Alpine Linux for minimal size)
FROM node:16-alpine

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy only package files first
COPY package*.json ./
RUN npm install

# 4. Copy remaining app source code
COPY . .

# 5. Expose the port your app listens on
EXPOSE 3000

# 6. Start the app using npm
CMD ["npm", "start"]