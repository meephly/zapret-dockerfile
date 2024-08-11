FROM alpine:3.14

RUN /opt/zapret/init.d/sysv/zapret start
ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD ["-f","/dev/null"]