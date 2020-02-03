FROM node as stat
WORKDIR /app
COPY ./zelda_f/zelda-cookbook-frontend/package.json .
RUN npm install
COPY ./zelda_f/zelda-cookbook-frontend .
RUN npm run build



FROM nginx
COPY --from=stat ./app/build ./usr/share/nginx/html
COPY ./nginx.conf ./etc/nginx/nginx.conf
# RUN npm install
# RUN npm run build
# COPY ./static ./usr/share/nginx/html/static
