FROM debian:12.6
RUN apt-get update && apt-get install -y git

WORKDIR /opt/zapret
RUN git clone --depth 1 https://github.com/bol-van/zapret .
RUN ./install_bin.sh
RUN ./install_prereq.sh
ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD ["-f","/dev/null"]