
# specify base image alpine version(a very simplified version of node)
FROM node:alpine

WORKDIR /usr/app

#install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
#default command

CMD ["npm", "start"]