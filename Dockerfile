FROM node:erbium-alpine

WORKDIR /mock-sendgrid

COPY package.json yarn.lock ./

RUN yarn install --production && yarn global add forever

COPY . .

EXPOSE 5870
EXPOSE 5871
CMD [ "npm", "start" ]
