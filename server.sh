#!/bin/bash
cp /ngircd.conf.template /ngircd.conf
sed -i 's/@@DOMAIN@@/'$IRC_HOSTNAME'/g'
sed -i 's/@@ADMIN@@/'$IRC_ADMIN_EMAIL'/g'
exec /usr/sbin/ngircd -n -f /ngircd.conf
