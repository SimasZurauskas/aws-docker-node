FROM node:16-alpine as builder

WORKDIR '/app'

COPY package.json .

COPY . .

RUN yarn

RUN yarn build

CMD ["yarn",  "start"]

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html