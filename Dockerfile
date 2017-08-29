FROM alpine

RUN apk update
RUN apk add openssl
ENV PATH $PATH:/root/.local/bin
RUN wget -qO- https://get.haskellstack.org/ | sh
RUN apk add ca-certificates
ADD  hello.hs /tmp/
RUN chmod +x /tmp/hello.hs
RUN ./tmp/hello.hs