FROM golang as builder
COPY printMessage /go/printMessage
RUN cd printMessage && \
    go build print.go

from scratch
COPY --from=builder /go/printMessage .
CMD ["/printMessage"]