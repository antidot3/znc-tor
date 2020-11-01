# latest alpine image for arm32v7 (rpi4)
FROM        arm32v7/alpine:latest

RUN         apk update
RUN         apk add --no-cache sudo znc tor proxychains-ng

ADD         src/torrc /etc/tor/
RUN         chmod 644 /etc/tor/torrc
RUN         chown root:root /etc/tor/torrc

ADD         src/entrypoint.sh /
RUN         chmod +x /entrypoint.sh
ADD         src/znc-data/ /znc-data/

EXPOSE      8080
ENTRYPOINT  ["/entrypoint.sh"]
