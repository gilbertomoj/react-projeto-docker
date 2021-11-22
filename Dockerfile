FROM node

WORKDIR /user/src/app

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY package.json ./

RUN rm -rf node_modules package-lock.json

RUN npm install 

COPY . ./

EXPOSE 3000

CMD ["npm", "start"]