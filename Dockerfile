FROM alpine:3.21.3
# Install nmap bind-tools iputils curl wget nano bash from Alpine repository
RUN apk update && apk add --no-cache nmap bind-tools iputils curl wget nano bash && \
    rm -rf /var/cache/apk/*
CMD ["/bin/bash"]