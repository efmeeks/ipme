# ipme

ip address looker upper that &hearts;s you

## Demo
<a href="https://asciinema.org/a/q2fSmWLQLbt4gRf6700sutkMZ?t=5.5&autoplay=1&loop=1&speed=1.1&size=medium&cols=50&rows=15"><img src="https://asciinema.org/a/q2fSmWLQLbt4gRf6700sutkMZ.png" width="65%" target="_blank"></a>

## Try 
**`curl -Ls file.efmeeks.net/ipme/ipme.sh | bash`**

## Get

* Download the script
  * `curl -L file.efmeeks.net/ipme/ipme.sh -o ipme.sh`
* Make it executable
  * `chmod +x ipme.sh`
* Place somewhere in your `$PATH`
  * `mv ipme.sh /usr/local/bin/ipme`
* Check with `which` or `type`
    ```text
    $ which ipme
    /usr/local/bin/ipme
    ```

    ```text
    $ type ipme
    ipme is hashed (/Users/eric/bin/ipme)
    ```

## Source
```bash
#!/bin/bash
# ipme - ip address looker upper
# https://git.efmeeks.net/ipme
# █████████████████████████████████
# █████████████████████████████████
# ████ ▄▄▄▄▄ █▀█ █▄█▄▀ █ ▄▄▄▄▄ ████
# ████ █   █ █▀▀▀█ ▀▀▄██ █   █ ████
# ████ █▄▄▄█ █▀ █▀▀▄▀▀ █ █▄▄▄█ ████
# ████▄▄▄▄▄▄▄█▄▀ ▀▄█ █ █▄▄▄▄▄▄▄████
# ████▄   ▄█▄▄▄▄▀▄▀▄▄██▄█ █▄█ █████
# █████▀█▀█▄▄█ █▄█▀█  ▀▀█ █ █  ████
# ████▀█▀▄▀█▄█  ▄█▄▀█▄  ▄▀▄▄ ██████
# ████ █▀▄██▄█▄▀█ ▄▄█  ▀▄ █▄▄ ▄████
# ████▄█▄▄██▄▄ ▀▄▄▀▀█  ▄▄▄ ▄▄▄▄████
# ████ ▄▄▄▄▄ █▄▄ █▀ ▄█ █▄█ ██  ████
# ████ █   █ █ ▀▀█▄█▄  ▄ ▄ ▄▄  ████
# ████ █▄▄▄█ █  ▄ ▄█▀▀ ▀█ █▄▄█ ████
# ████▄▄▄▄▄▄▄█▄██▄███████▄▄▄▄▄▄████
# █████████████████████████████████
# █████████████████████████████████

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

```
