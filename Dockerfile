# Menggunakan node:18-alpine sebagai base image
FROM node:14.21-alpine
# menetapkan working directory untuk container yang akan dibuat ke folder /src
# artinya seluruh code akan berada di folder /src dalam container
WORKDIR /src
# menyalin file package.json ke folder /src
COPY package*.json ./
# menginstall dependencies dari package.json
RUN npm install
# menetapkan environment variable NODE_ENV menjadi production
ENV NODE_ENV=production
RUN npm ci
# menyalin code dari current directory ke folder /src dalam container
COPY . .
# menggunakan port 3001 untuk menjalankan container
EXPOSE 3001
# membuat entrypoint untuk menjalankan container
CMD ["npm", "start"]