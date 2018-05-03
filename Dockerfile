FROM debian:9-slim

LABEL maintainer="villeger.c@gmail.com"

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get install -y xvfb \
                       xfonts-base \
                       xfonts-75dpi \
                       xfonts-100dpi \
                       xfonts-cyrillic \
                       gource \
                       screen \
                       ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Mount volumes
#VOLUME ["/repoRoot", "/avatars", "/results"]

# Set the working directory to where the git repository is stored
WORKDIR /app

CMD ["supervisord"]
