ARG VERSION
FROM tobyxdd/hysteria:${VERSION}

RUN apk add --update --no-cache iptables

COPY --chmod=755 entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
