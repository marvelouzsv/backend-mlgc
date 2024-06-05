FROM node:20

ENV NODE_ENV=production
ENV PORT=8080
ENV MODEL_URL='https://storage.googleapis.com/submission-mlgc-tiara/model.json'

COPY . .

RUN apt-get update && \
    apt-get install -y build-essential \
    wget \
    python3 \
    make \
    gcc \
    libc6-dev

RUN npm install

EXPOSE 8080

CMD [ "npm", "run", "prod" ]
