FROM node:18-bullseye

RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip git curl && \
    pip3 install --upgrade pip && \
    pip3 install git+https://github.com/openai/whisper.git && \
    npm install --location=global n8n

RUN mkdir /root/.n8n

EXPOSE 5678

CMD ["n8n"]
