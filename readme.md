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

Activate OTP
----

    $ source /usr/local/docker/erl.<version>/activate


Stop and remove container
-----

    $ docker-compose stop <cont>; docker-compose rm -f <cont>
    
