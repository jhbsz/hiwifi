#!/bin/sh

HOSTS="${HOME}/etc/hosts.d/hosts"
curl -k "https://vps.pjq.me:8443/FTServlet/openapi/getip?domain=play.google.com" -o hosts.tmp
awk -F " " '{print $2"     "$1}' hosts.tmp  > ${HOSTS}
rm hosts.tmp
