# Sinatra docker

Docker for hosting my tipical [Sinatra](http://www.sinatrarb.com) apps.
It includes [haml](http://haml.info), [sass](http://sass-lang.com), activerecord & sqlite3.

## Running a Sinatra app
    docker run --name my-sinatra-app \
        -p 80:80 \
        -v /path/to/sinatra/app:/app \
        -e MAIN_APP_FILE=main.rb \
        -d mgergi/sinatra
        
 ## Running a Sinatra app using docker-compose
     version: '3'

     services:

       main:
         image: sinatra
         ports:
           - 8083:80
         volumes:
           - appdir:/www
         restart: always

     volumes:
       appdir:


