FROM golang:1.17-alpine

WORKDIR /build

COPY * ./
RUN go mod download

RUN go build -o ./app

EXPOSE 8080

CMD [ "./app" ]
