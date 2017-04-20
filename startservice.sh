#!/bin/sh

ERL000=$(echo /usr/local/docker/erl\.*)
ERL=${ERL000##* }

setcap cap_net_bind_service=ep $ERL/erts-*/bin/beam.smp
source $ERL/activate; epmd -daemon
mkdir -p /run/rpcbind; rpcbind -w

tail -f /var/log/${INST}.log
