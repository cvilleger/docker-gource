FROM alpine:3.7

MAINTAINER villeger.c@gmail.com

RUN apk add --update --no-cache ffmpeg gource

ENTRYPOINT ["gource"]
