#!/bin/bash
set -o errexit

CMD="/usr/bin/neutron-openvswitch-agent"
ARGS="--config-file /etc/neutron/neutron.conf --config-file /etc/neutron/plugins/ml2/ml2_conf.ini"

# Loading common functions.
source /opt/kolla/kolla-common.sh

# Config-internal script exec out of this function, it does not return here.
set_configs

# Set !requiretty
source /opt/kolla/config-sudoers.sh

exec $CMD $ARGS
