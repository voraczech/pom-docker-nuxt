FROM node:16

WORKDIR /dockerapp

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . .

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "yarn", "dev" ]
