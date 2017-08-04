build with Erlang/OTP
====

Build erlang applications with OTP.

Build
-----

    $ docker-compose build

Start container
-----

    $ docker-compose up -d otp

Attach to container
-----

    $ docker exec -ti <cont> bash

## ssh to container

```
ssh -p3122 -A worker@localhost
```

Activate OTP
----

    $ source /usr/local/docker/erl.<version>/activate


Stop and remove container
-----

    $ docker-compose stop; docker-compose rm -f
    
