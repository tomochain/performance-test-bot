FROM golang:1.9.4-stretch

WORKDIR /build

RUN \
    apt-get update && apt-get install -y build-essential

COPY ./ /build/

RUN go get -d -v ./...
RUN make

CMD ["bash", "test.sh"]
