[![Latest Build Status](https://github.com/goofball222/airhornbot/actions/workflows/build-latest.yml/badge.svg)](https://github.com/goofball222/airhornbot/actions/workflows/build-latest.yml) [![Docker Pulls](https://img.shields.io/docker/pulls/goofball222/airhornbot.svg)](https://hub.docker.com/r/goofball222/airhornbot/) [![Docker Stars](https://img.shields.io/docker/stars/goofball222/airhornbot.svg)](https://hub.docker.com/r/goofball222/airhornbot/) [![MB License](https://images.microbadger.com/badges/license/goofball222/airhornbot.svg)](https://microbadger.com/images/goofball222/airhornbot)

# Airhorn Bot
Fork of [mwstobo/airhornbot](https://github.com/mwstobo/airhornbot) which is based on the [original Airhorn Bot](https://github.com/hammerandchisel/airhornbot) minus the webserver, Redis stats collection, and with customized sounds. Cleaned up the Dockerfile and build process.

Airhorn bot utilizes the [discordgo](https://github.com/bwmarrin/discordgo) library, a free and open source library. Airhorn Bot requires Go 1.11 or higher.

[Create a Discord bot account](https://discordpy.readthedocs.io/en/rewrite/discord.html)

## Usage
```shell
# Compile
$ make

# Run
$ ./bot -t "BOT_ACCOUNT_TOKEN"
```

## Docker image

```shell
# Run Airhorn Bot in a Docker container
$ docker run -d goofball222/airhornbot ./bot -t "BOT_ACCOUNT_TOKEN"
```
