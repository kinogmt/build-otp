#!/bin/sh

ERL=/usr/local/docker/erl.19.3

setcap cap_net_bind_service=ep $ERL/erts-*/bin/beam.smp
source $ERL/activate; epmd -daemon
mkdir -p /run/rpcbind; rpcbind -w

tail -f /var/log/${INST}.log
