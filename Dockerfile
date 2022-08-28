FROM node:16-alpine as builder

WORKDIR '/app'

COPY package.json .

COPY . .

RUN yarn

RUN yarn build

EXPOSE 80

CMD ["yarn",  "start"]
