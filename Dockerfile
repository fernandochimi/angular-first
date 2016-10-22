FROM node:6.9.0

RUN mkdir /angular-first
ADD . /angular-first
WORKDIR /angular-first/angular_first/
RUN npm install
RUN npm run typings install
