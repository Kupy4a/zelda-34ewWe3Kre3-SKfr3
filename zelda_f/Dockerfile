FROM node:13.7.0-stretch
WORKDIR /app
COPY ./zelda-cookbook-frintend/package.json .
RUN npm install
COPY ./zelda-cookbook-frintend .
ENTRYPOINT ["npm", "run", "start"]