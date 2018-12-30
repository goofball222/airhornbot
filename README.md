# Airhorn Bot
Fork of the [original Airhorn Bot](https://github.com/hammerandchisel/airhornbot) so I can run it myself and add my own audio clips. I deleted the web server because I don't need it. Also, the bot no longer collects stats with Redis as I don't want to have extra dependencies.

Airhorn bot utilizes the [discordgo](https://github.com/bwmarrin/discordgo) library, a free and open source library. Airhorn Bot requires Go 1.11 or higher.

## Usage
```shell
# Compile
$ make

# Run
$ ./bot -t "MY_BOT_ACCOUNT_TOKEN"
```

## Docker image
I've hosted this version of Airhorn Bot on Docker Hub. You can check out the repository [here](https://hub.docker.com/r/mwstobo/airhornbot/).

```shell
# Run Airhorn Bot in a Docker container
$ docker run -d mwstobo/airhornbot ./bot -t "MY_BOT_ACCOUNT_TOKEN"
```

## Original thanks
Thanks to the awesome (one might describe them as smart... loyal... appreciative...) [iopred](https://github.com/iopred) and [bwmarrin](https://github.com/bwmarrin/discordgo) for helping code review the initial release.
