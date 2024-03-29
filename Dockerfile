FROM golang:latest
WORKDIR /app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
ENV PORT 8000

RUN go build -o main ./cmd/main.go

CMD ["/app/main"]