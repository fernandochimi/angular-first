FROM node:6.9.0

RUN mkdir /angular-first
ADD angular_first /angular-first/angular_first/
WORKDIR /angular-first/angular_first
RUN npm install
RUN npm run typings install
