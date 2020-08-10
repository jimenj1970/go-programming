FROM golang as build
COPY releaseparty.go .
RUN go build releaseparty.go

FROM alpine
COPY --from=build /go/releaseparty /releaseparty
CMD ["/releaseparty"]