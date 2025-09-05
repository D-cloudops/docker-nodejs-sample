FROM node:24-alpine

WORKDIR /app

COPY package*.json .

RUN npm install 

RUN adduser -s /bin/sh -D appuser

COPY --chown=appuser . .

USER appuser 

EXPOSE 3000

CMD ["node", "src/index.js"]