#!/bin/bash
# ipme - ip address looker upper
# https://github.com/efmks/ipme

ipme() {
  #public
  echo ''
  echo "public: $(curl -sL http://ipecho.net/plain)"

  #local
  while read ip; do
    echo "local: $ip"
  done < <(ifconfig | egrep 'inet' | egrep -v 'inet6|127' | awk '{ print $2 }')

  #signoff
  echo -e "\x20\x20\xE2\x99\xA1 ipme"; echo ''
}

if [ "$1" == "--nofun" ]; then
  ipme
elif [ -x "$(which lolcat)" ]; then
  ipme | lolcat
else
  ipme
fi
