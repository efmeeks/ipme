#!/bin/bash

# ipme: ip address looker upper
# https://git.efmeeks.net/ipme

ipme() {
  echo ''; echo "  Public IP: $(wget -q -O - http://ipecho.net/plain)"
  echo "  Private IP: $(ifconfig | egrep 'inet' | egrep -v 'inet6|127' | awk '{ print $2 }')"
  echo -e "\x20 \x20 \xE2\x99\xA1 ipme"; echo ''
} 

ipme