#基于 node:latest 镜像而构建的
FROM node

LABEL maintainer="rogerslei@163.com"

COPY . /docker-vue

WORKDIR /docker-vue

RUN yarn install

EXPOSE 8080

CMD ["yarn", "serve"]