FROM debian:latest
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs shadowsocks-libev redis-server && \
    npm i -g shadowsocks-manager --unsafe-perm
RUN mkdir /root/.ssmgr
CMD ["bash"]
