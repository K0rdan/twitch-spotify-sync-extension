FROM node:14

WORKDIR /usr/src/app

COPY . .

RUN \
  yarn install --loglevel warn --production &&\
  yarn build

CMD [ "yarn", "start"]
