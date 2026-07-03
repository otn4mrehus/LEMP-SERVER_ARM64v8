#!/bin/sh

set -e

mkdir -p /var/run/sshd

service ssh start

exec php-fpm