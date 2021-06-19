#!/bin/bash
cp ${IRC_CONF_TEMPLATE:-/ngircd.conf.template} /ngircd.conf
sed -i 's/@@DOMAIN@@/'$IRC_HOSTNAME'/g' /ngircd.conf
sed -i 's/@@EMAIL@@/'$IRC_ADMIN_EMAIL'/g' /ngircd.conf
sed -i 's/@@CERTDIR@@/'${TLS_CERT_PATH//\//\\/}'/g' /ngircd.conf
exec /usr/sbin/ngircd -n -f /ngircd.conf
