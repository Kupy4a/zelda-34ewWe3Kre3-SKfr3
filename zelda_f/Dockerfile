FROM node
WORKDIR /app
COPY ./zelda-cookbook-frontend/package.json .
RUN npm install
COPY ./zelda-cookbook-frontend .
ENTRYPOINT ["npm", "run", "start"]