#!/bin/bash

if [[ ! -d "/var/log/kolla/octopus" ]]; then
    mkdir -p /var/log/kolla/octopus
fi
if [[ $(stat -c %a /var/log/kolla/octopus) != "755" ]]; then
    chmod 755 /var/log/kolla/octopus
fi

. /usr/local/bin/kolla_octopus_extend_start
