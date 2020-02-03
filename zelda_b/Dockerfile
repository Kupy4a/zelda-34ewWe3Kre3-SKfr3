FROM node:13.7.0-stretch
WORKDIR /app
RUN apt update && apt install netcat -y 
COPY ./zelda-cookbook-backend/package.json .
RUN npm install
RUN npm install knex -g
COPY ./zelda-cookbook-backend .
COPY ./zelda-cookbook-backend/entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "sh","entrypoint.sh" ]