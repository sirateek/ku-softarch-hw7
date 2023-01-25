FROM node:18.13

WORKDIR /app

COPY package*.json .
COPY yarn.lock .

RUN yarn install

COPY src/ .

EXPOSE 3000

CMD ["node", "."]


