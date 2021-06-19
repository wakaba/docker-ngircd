#!/bin/bash
cp ${IRC_CONF_TEMPLATE:-/ngircd.conf.template} /ngircd.conf
sed -i 's/@@DOMAIN@@/'$IRC_HOSTNAME'/g' /ngircd.conf
sed -i 's/@@EMAIL@@/'$IRC_ADMIN_EMAIL'/g' /ngircd.conf
sed -i 's/@@CERTDIR@@/'${TLS_CERT_PATH//\//\\/}'/g' /ngircd.conf
exec /usr/sbin/ngircd -n -f /ngircd.conf

## Per CC0 <https://creativecommons.org/publicdomain/zero/1.0/>, to
## the extent possible under law, the author of the files in this
## repository has waived all copyright and related or neighboring
## rights to the files in this repository.
