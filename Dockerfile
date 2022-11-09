FROM alpine:latest
LABEL MAINTAINER="https://github.com/ArmandoRN/zphisheer"
WORKDIR /zphisheer/
ADD . /zphisheer
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./zphisheer.sh"
