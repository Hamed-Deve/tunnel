FROM alpine:latest

RUN apk add --no-cache socat

ENTRYPOINT ["socat"]

CMD ["TCP-LISTEN:80,fork", "TCP-LISTEN:443,fork", "TCP:91.107.139.147:443"]
