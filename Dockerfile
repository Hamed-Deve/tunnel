FROM alpine:latest

RUN apk add --no-cache iptables

CMD ["sh", "-c", "iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 91.107.139.147:443 && iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 91.107.139.147:443 && iptables -t nat -A POSTROUTING -j MASQUERADE && exec /bin/sh"]

EXPOSE 443
