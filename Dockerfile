FROM golang:latest as builder

WORKDIR /app

COPY fullcycle.go ./

RUN go build fullcycle.go

FROM scratch as bin
COPY --from=builder app /

ENTRYPOINT ["./fullcycle"]
