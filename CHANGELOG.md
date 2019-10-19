* **2019-10-18:**
    * Update Dockerfile to reference golang:alpine image for latest version
    * Update go.mod to use discordgo v0.20.0, fixes issue with audio connections failing with an error:
        * voice.go:487:wsHeartbeat() error sending heartbeat to voice endpoint us-central728.discord.media:80, websocket: close sent
    * Update go.mod to use logrus v1.4.2, because it exists and higher = better, right?
    * Update VERSION to 1.1.0, again higher is better. ALL THE NUMBERS.
    * Create CHANGELOG.md
---
