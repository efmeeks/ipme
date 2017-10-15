# ipme

ip address looker uppper

## Sample
```text
$ ipme

  Public IP: 104.24.115.16
  Private IP: 10.0.0.108
    ♡ ipme
    
```

## Try

> Piping to the shell can be dangerous. It's always a good idea to check the [source](ipme.sh) first.

```bash
curl -Ls file.efmeeks.net/ipme/ipme.sh | bash
```

## Get

* Download the script
  * `curl -Ls file.efmeeks.net/ipme/ipme.sh`
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
