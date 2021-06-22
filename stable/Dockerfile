FROM golang:alpine

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL \
    org.opencontainers.image.vendor="The Goofball - goofball222@gmail.com" \
    org.opencontainers.image.url="https://github.com/goofball222/airhornbot" \
    org.opencontainers.image.title="Discord Airhorn Bot" \
    org.opencontainers.image.description="Discord Airhorn Bot" \
    org.opencontainers.image.version=$VERSION \
    org.opencontainers.image.source="https://github.com/goofball222/airhornbot" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE \
    org.opencontainers.image.licenses="Apache-2.0"

WORKDIR /opt/airhornbot

COPY . .

RUN \
    apk add -q --no-cache --virtual .build-deps \
        gcc git musl-dev \
    && go mod vendor \
    && go build cmd/bot/bot.go \
    && apk del -q --purge .build-deps \
    && rm -rf /tmp/* /var/cache/apk/*

CMD ["./bot", "-t YOUR_TOKEN_HERE"]
