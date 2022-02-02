# this is just an example, not following OCI best practices
FROM golang:alpine3.14

WORKDIR /app

COPY . .

RUN apk add -u git curl tzdata

RUN curl -LO https://github.com/go-task/task/releases/download/v3.10.0/task_linux_amd64.tar.gz
RUN tar -xvzf task_linux_amd64.tar.gz
RUN mv task /usr/local/bin

RUN curl -LO https://github.com/golang-migrate/migrate/releases/download/v4.15.1/migrate.linux-amd64.tar.gz
RUN tar -xvzf migrate.linux-amd64.tar.gz
RUN mv migrate /usr/local/bin

RUN go mod download

# enable vim mode on sh
RUN set -o vi
