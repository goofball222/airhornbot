BOT_BINARY=bot

all: bot

bot: cmd/bot/bot.go
	go build -o ${BOT_BINARY} cmd/bot/bot.go

clean:
	rm -r ${BOT_BINARY}
