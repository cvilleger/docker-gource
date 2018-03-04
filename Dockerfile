FROM ubuntu:17.10

MAINTAINER villeger.c@gmail.com

RUN apt-get update \
 && apt-get install -y ffmpeg gource \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["gource"]
