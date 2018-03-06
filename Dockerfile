FROM alpine:3.7

MAINTAINER villeger.c@gmail.com

RUN apk add --update --no-cache \
    ffmpeg \
    git \
    autoconf \
    automake \
    build-base \
    freetype-dev \
    pcre-dev \
    glew-dev \
    sdl2-dev \
    sdl2_image-dev \
    boost-dev \
    glm-dev

RUN git clone --branch gource-0.48 https://github.com/acaudwell/Gource.git

RUN cd ./Gource && ./autogen.sh && ./configure && make && make install
