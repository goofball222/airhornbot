FROM golang:1.11-alpine

LABEL \
    org.label-schema.vendor="The Goofball - goofball222@gmail.com" \
    org.label-schema.url="https://github.com/goofball222/airhornbot" \
    org.label-schema.name="Discord Airhorn Bot DCA converter" \
    org.label-schema.vcs-url="https://github.com/goofball222/airhornbot.git" \
    org.label-schema.license="MIT" \
    org.label-schema.schema-version="1.0"

WORKDIR /go

RUN \
    apk add -q --no-cache --virtual .build-deps \
        gcc git musl-dev \
    && go get -u github.com/bwmarrin/dca/cmd/dca \
    && apk add -q --no-cache \
    bash ffmpeg \
    && apk del -q --purge .build-deps \
    && rm -rf /tmp/* /var/cache/apk/*


# ffmpeg -i /work/input.mp3 -f s16le -ar 48000 -ac 2 pipe:1 | dca > /work/output.dca
# CMD ["ffmpeg", "-i", "/work/input.audio", "-f", "s16le", "-ar", "48000", "-ac", "2", "pipe:1", "|", "dca", ">", "/work/output.dca"]

CMD ffmpeg -i /work/input.audio -f s16le -ar 48000 -ac 2 pipe:1 | dca > /work/output.dca
