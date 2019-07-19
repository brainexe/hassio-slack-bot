FROM golang:alpine as builder

COPY . ./

RUN apk add git
RUN git clone https://github.com/innogames/slack-bot.git /code/
WORKDIR /code/
RUN go build -o /app cmd/bot/main.go

FROM alpine:latest as alpine
RUN apk add --no-cache git ca-certificates
COPY --from=builder app .

CMD ["./app", "-config", "/share/slack-bot/*.yaml"]