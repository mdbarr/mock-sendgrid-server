FROM node:erbium-alpine

WORKDIR /mock-sendgrid

RUN yarn global add forever

COPY package.json yarn.lock ./

RUN yarn install --production

COPY . .

EXPOSE 5870/tcp 5871/tcp
CMD [ "npm", "start" ]
