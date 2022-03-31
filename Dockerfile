FROM node:16.14

WORKDIR /dockerapp

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

ENV HOST localhost
EXPOSE 3000

CMD [ "yarn", "dev" ]
