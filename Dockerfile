FROM node:8
 
WORKDIR /usr/src/app

COPY index.js ./
COPY package*.json ./
 
RUN npm install

COPY . . 

EXPOSE 80
 
CMD [ "npm", "index.js" ]