FROM colstrom/ruby

RUN apk-install gcc make musl-dev ruby-dev \
    && env DISABLE_SSL=1 gem install puma \
    && gem install io-console lita \
    && apk del gcc make musl-dev ruby-dev

COPY start /usr/local/bin/start
RUN chmod a+x /usr/local/bin/start
RUN adduser -S -D -h /app lita
COPY app /app
WORKDIR /app
USER lita
