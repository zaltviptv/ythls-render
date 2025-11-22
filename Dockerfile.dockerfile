FROM node:20-slim

RUN apt update && apt install -y \
  ffmpeg \
  python3 \
  python3-pip \
  curl \
  && pip3 install -U yt-dlp \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN npm install

EXPOSE 10000

CMD ["npm", "start"]
