FROM quay.io/wakaba/base:stable

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install ngircd && \
    rm -rf /var/lib/apt/lists/*

ADD ngircd.conf /ngircd.conf.template
ADD server.sh /server

CMD ["/server"]

## Per CC0 <https://creativecommons.org/publicdomain/zero/1.0/>, to
## the extent possible under law, the author of the files in this
## repository has waived all copyright and related or neighboring
## rights to the files in this repository.
