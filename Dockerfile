FROM alpine:3.14
RUN apk add git

WORKDIR /usr/local/app
RUN git clone --depth 1 https://github.com/bol-van/zapret .
RUN ./install_bin.sh
RUN ./install_prereq.sh
CMD [ "ls" ]