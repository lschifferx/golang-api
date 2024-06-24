FROM golang:1.18

WORKDIR /go/src/app

COPY . .

# Instalação do wait-for-it
RUN wget -O /usr/local/bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x /usr/local/bin/wait-for-it.sh

EXPOSE 8000

RUN go build -o main cmd/main.go

CMD ["./main"]