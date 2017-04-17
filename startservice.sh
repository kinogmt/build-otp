#!/bin/sh

epmd -daemon
rpcbind -w

setcap cap_net_bind_service=ep /usr/local/docker/erl.*/erts-*/bin/beam.smp
