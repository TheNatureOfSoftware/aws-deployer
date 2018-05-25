FROM alpine:3.6

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less jq bash && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

WORKDIR /data

COPY entrypoint.sh /
COPY assume.sh / 
COPY wait.sh /

RUN ln -s /assume.sh /usr/bin/assume && \
    chmod +x /entrypoint.sh && \
    chmod +x /assume.sh

RUN ln -s /wait.sh /usr/bin/wait && \
    chmod +x /entrypoint.sh && \
    chmod +x /wait.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["--help"]