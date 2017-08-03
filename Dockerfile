FROM alpine:3.5

ARG version=0.2.0
ARG buildhost=https://github.com/mwstobo/airhornbot/archive
ARG buildfile=cmd/bot/bot.go
ARG tar_filename=${version}.tar.gz

ENV GOPATH=/root/go
ENV AIRHORN_SRC=$GOPATH/src/github.com/mwstobo/airhornbot

RUN apk update \
 && apk add ca-certificates \
            wget \
            go \
            glide \
            git \
            musl-dev \
 && update-ca-certificates \
 && wget ${buildhost}/${tar_filename} \
 && mkdir -p $AIRHORN_SRC \
 && tar xvf "${tar_filename}" -C $AIRHORN_SRC --strip 1 \
 && rm "${tar_filename}" \
 && cd $AIRHORN_SRC \
 && glide install \
 && go build ${buildfile}

WORKDIR $AIRHORN_SRC
CMD ["./bot", \
       "-t YOUR_TOKEN_HERE"]
