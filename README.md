Github location : [https://github.com/jguay/logeverymin](https://github.com/jguay/logeverymin)
Docker hub location : [https://hub.docker.com/repository/docker/julienguay/logeverymin](https://hub.docker.com/repository/docker/julienguay/logeverymin)

# logeverymin
Just a simple docker image which sends a message to stdout every 60 seconds by default

# Usage
docker CLI :
```
$ docker run -e 'frequency=1' -e 'logLength=20' julienguay/logeverymin:1.0
{"timestamp":"Tue Dec  8 10:08:19 UTC 2020","id":"0","message":"test test test test " }
{"timestamp":"Tue Dec  8 10:08:20 UTC 2020","id":"1","message":"test test test test " }
{"timestamp":"Tue Dec  8 10:08:21 UTC 2020","id":"2","message":"test test test test " }
```

- frequency : how often to send a message in seconds
- logLength : approximate length of message, this will be divided by 5