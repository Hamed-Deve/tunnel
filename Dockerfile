FROM alpine:latest

RUN apk add --no-cache socat

EXPOSE 443

CMD socat TCP-LISTEN:127.0.0.1:443,fork UDP-LISTEN:127.0.0.1:443,fork,su=nobody,reuseaddr,reuseport TCP:91.107.139.147:443
