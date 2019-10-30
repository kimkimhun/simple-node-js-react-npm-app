FROM node:12.11.0-alpine as build

WORKDIR /usr/src/app

ADD ./package.json /usr/src/app

RUN yarn install

ADD . /usr/src/app

RUN yarn build

FROM nginx:1.17.4-alpine

COPY --from=build /usr/src/app/build /usr/share/nginx/html

EXPOSE 80
