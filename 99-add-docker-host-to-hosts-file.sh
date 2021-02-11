#!/bin/sh

ip route show default | awk '{print $3 "\tdocker-host"}' >> /etc/hosts
