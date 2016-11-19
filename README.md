# cmmc-docker-lighttpd

    git clone https://github.com/cmmakerclub/cmmc-docker-lighttpd.git
    cd cmmc-docker-lighttpd/
    docker build -t "my-cmmc-docker-lighttpd" .
    docker images | grep my-cmmc-docker-lighttpd
    docker run -d -it --name "my-lighttpd" -p 80:80 -v $(pwd)/www-static:/var/www my-cmmc-docker-lighttpd
