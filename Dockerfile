# set base image with node:14
FROM node:14

# set working directory inside container
WORKDIR /app

# copy source code into working directory inside container
COPY . .

# set env
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies and build app
RUN npm install --production --unsafe-perm && npm run build

# Expose the port of app to 8080
EXPOSE 8080

# Set entry point/start app
CMD [ "npm", "start" ]
