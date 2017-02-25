FROM node:6.9.4-alpine
RUN apk add --no-cache vim curl git

ENV APP_HOME /work
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN npm install -g lerna

# install node modules
ADD . $APP_HOME
RUN npm link ./packages/piyo
RUN lerna bootstrap && npm i