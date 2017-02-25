FROM node:6.9.4-alpine
RUN apk add --no-cache vim curl git

ENV APP_HOME /work
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD package.json lerna.json $APP_HOME/
RUN npm install -g lerna

# install node modules
ADD ./packages $APP_HOME/packages
RUN npm link $APP_HOME/packages/piyo

RUN lerna bootstrap
RUN npm i

# install node modules
ADD . $APP_HOME