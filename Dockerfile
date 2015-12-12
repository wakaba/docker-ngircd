FROM debian

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install ngircd && \
    rm -rf /var/lib/apt/lists/*

RUN echo '#!/bin/bash' > /server && \
    echo 'exec /usr/sbin/ngircd -n -f /conf/ngircd.conf' >> /server && \
    chmod u+x /server && \
    rm -rf /var/lib/apt/lists/*

CMD ["/server"]
