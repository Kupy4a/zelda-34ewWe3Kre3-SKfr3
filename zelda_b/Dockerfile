FROM node:13.7.0-stretch
WORKDIR /app
RUN apt update && apt install netcat -y && npm install pg && npm install knex -g && npm install knex --save && npm install pg --save
COPY ./zelda-cookbook-backend .
# COPY  ./project/requirements.txt .
# RUN pip install -r requirements.txt

# COPY ./project .
# COPY .env ./gutendex/
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
# RUN chmod +x manage.py
ENTRYPOINT [ "sh","entrypoint.sh" ]