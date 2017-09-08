FROM golang
MAINTAINER Silent Yang

WORKDIR /root/
RUN go get github.com/pholcus/spider_lib \ 
    && go get github.com/henrylee2cn/teleport \
    && go get github.com/PuerkitoBio/goquery \
    && go get github.com/robertkrimen/otto \
    && go get github.com/andybalholm/cascadia \
    && go get github.com/go-sql-driver/mysql \
    && go get github.com/jteeuwen/go-bindata/... \
    && go get github.com/elazarl/go-bindata-assetfs/... \
    && go get gopkg.in/mgo.v2 \
    && go get golang.org/x/net/html \
    && go get golang.org/x/text/encoding \
    && go get golang.org/x/text/transform \
    && go get github.com/henrylee2cn/pholcus
ADD main.go main.go

ENTRYPOINT go run main.go
VOLUME /root/pholcus_pkg
EXPOSE 9090