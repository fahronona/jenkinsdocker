FROM node:16-alpine

WORKDIR /app

COPY . /app

RUN  npm install pm2@latest -g && \
          npm install 

USER node

CMD ["pm2-runtime", "start", "./bin/www"]
