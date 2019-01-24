FROM alpine:3.8

RUN mkdir /dot && \
  apk add --update graphviz ttf-dejavu && rm -rf /var/cache/apk/*

WORKDIR /dot

CMD dot -Tpng
