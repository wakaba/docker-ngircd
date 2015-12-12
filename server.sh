#!/bin/bash
cp /ngircd.conf.template /ngircd.conf
sed -i 's/@@DOMAIN@@/'$IRC_HOSTNAME'/g' /ngircd.conf
sed -i 's/@@ADMIN@@/'$IRC_ADMIN_EMAIL'/g' /ngircd.conf
exec /usr/sbin/ngircd -n -f /ngircd.conf
