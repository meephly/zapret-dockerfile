FROM apline:latest
WORKDIR /usr/local/app
RUN git clone --depth 1 https://github.com/bol-van/zapret .
RUN install_bin.sh
RUN install_prereq.sh