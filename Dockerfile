FROM golang:1.8
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get github.com/tealeg/xlsx && go build -o xlsx2csv . 
CMD ["/app/xlsx2csv"]
