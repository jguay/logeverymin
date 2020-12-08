# logeverymin
Just a simple docker image which sends a message to stdout every 60 seconds by default

# Usage
docker CLI :
```
docker run -e 'frequency=1' -e 'logLength=10' julienguay/logeverymin:1.0
[Sat Dec  5 23:18:26 UTC 2020] 0 test test
[Sat Dec  5 23:18:27 UTC 2020] 1 test test
[Sat Dec  5 23:18:28 UTC 2020] 2 test test
```
