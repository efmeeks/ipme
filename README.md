# ipme

ipme is an ip address looker uppper

## Sample
```bash
$ ipme
```
```bash
  Public IP: 192.30.253.112
  Private IP: 10.0.0.108
    ♡ ipme
```

## Try It

```bash
wget -q -O - https://git.io/vdiDm | bash
```

> Piping to the shell can be dangerous. It's always a good idea to check the [source code](#source) first.

## Get it
```bash
wget -q -O ipme.sh https://git.io/vdiDm
```

## Source
```bash
#!/bin/bash

# ipme: ip address looker upper
# https://git.io/vdiMj

ipme() {
  echo ''; echo "  Public IP: $(wget -q -O - http://ipecho.net/plain)"
  echo "  Private IP: $(ifconfig | egrep 'inet' | egrep -v 'inet6|127' | awk '{ print $2 }')"
  echo -e "\x20 \x20 \xE2\x99\xA1 ipme"; echo ''
}

ipme

```
