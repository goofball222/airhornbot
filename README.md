# Airhorn Bot
Fork of the [original Airhorn Bot](https://github.com/hammerandchisel/airhornbot) so I can run it myself and add my own audio clips. I got rid of the directories I didn't need. Airhorn bot utilizes the [discordgo](https://github.com/bwmarrin/discordgo) library, a free and open source library. Airhorn Bot requires Go 1.4 or higher.

## Usage

**First install the bot:**
```
go get github.com/mwstobo/airhornbot/cmd/bot
go install github.com/mwstobo/airhornbot/cmd/bot
```
 **Then run the following command:**

```
bot -r "localhost:6379" -t "MY_BOT_ACCOUNT_TOKEN" -o OWNER_ID
```

## Thanks
Thanks to the awesome (one might describe them as smart... loyal... appreciative...) [iopred](https://github.com/iopred) and [bwmarrin](https://github.com/bwmarrin/discordgo) for helping code review the initial release.
