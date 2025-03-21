FROM alpine:latest

RUN mkdir -p /website
RUN apk -i update
RUN apk -i --no-cache upgrade
RUN apk add --no-cache busybox-extras curl
RUN curl -s -o /website/index.html https://raw.githubusercontent.com/casparwylie/cascii-core/refs/heads/main/cascii.html

EXPOSE 3000

CMD ["httpd", "-f", "-v", "-h", "/website", "-p", "3000"]
