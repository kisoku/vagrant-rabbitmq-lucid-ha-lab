#!/bin/sh

set -ex

mkfs -t xfs -L rabbitmq /dev/drbd/by-res/rabbitmq
