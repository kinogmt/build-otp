#!/bin/sh

ERL=/usr/local/docker/erl.19.2

source $ERL/activate
epmd -daemon
rpcbind -w
setcap cap_net_bind_service=ep $ERL/erts-*/bin/beam.smp
tail -f /var/log/${INST}.log
