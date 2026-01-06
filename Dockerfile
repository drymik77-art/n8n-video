FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y \
      ffmpeg \
      fontconfig \
      fonts-dejavu-core \
      fonts-freefont-ttf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node
