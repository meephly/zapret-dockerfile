FROM alpine:3.14
RUN apk add git
RUN apk add htop

WORKDIR /usr/local/app
RUN git clone --depth 1 https://github.com/bol-van/zapret .
RUN ./install_bin.sh
RUN ./install_prereq.sh
ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD ["-f","/dev/null"]