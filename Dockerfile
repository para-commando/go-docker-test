FROM golang:1.24.0-alpine  

RUN mkdir /app

ADD . /app

# Set working directory
WORKDIR /app

RUN go build -o main .
 
EXPOSE 8080


CMD ["/app/main"] 

