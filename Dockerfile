FROM node:22

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json /app
RUN npm install

# Bundle app source
COPY . /app

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]