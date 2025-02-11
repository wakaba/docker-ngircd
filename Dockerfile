FROM quay.io/wakaba/base:stable

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install ngircd && \
    rm -rf /var/lib/apt/lists/*

ADD ngircd.conf /ngircd.conf.template
ADD server.sh /server

CMD ["/server"]
