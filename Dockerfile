FROM ruby:alpine

ENV MAIN_APP_FILE main.rb

RUN apk upgrade --update && \
    apk add gcc make libc-dev sqlite-libs sqlite-dev && \
    gem install --no-rdoc --no-ri sinatra && \
    gem install --no-rdoc --no-ri haml && \
    gem install --no-rdoc --no-ri sass && \
    gem install --no-rdoc --no-ri sqlite3 && \
    gem install --no-rdoc --no-ri activerecord && \
    apk del gcc make libc-dev sqlite-dev && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /www

ADD start.sh /

WORKDIR /www

EXPOSE 80

CMD ["/bin/sh", "/start.sh"]
