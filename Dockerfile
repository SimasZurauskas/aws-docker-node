FROM node:16-alpine as builder

WORKDIR '/app'

COPY package.json .

COPY . .

RUN npm

RUN npm run build

EXPOSE 80

CMD ["npm",  "start"]
