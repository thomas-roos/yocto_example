#!/bin/bash
source poky/oe-init-build-env build

BB_ENV_PASSTHROUGH_ADDITIONS="PUT $BB_ENV_PASSTHROUGH_ADDITIONS" PUT="aws-c-mqtt-ptest" bitbake core-image-minimal

echo "this will start qemu environment - you can exit with 'strg+a c' and then type quit"
echo "when qemu is running log in as root without password, go to /usr/lib/aws-c-mqtt/ptest/ and run ./run-ptest"
echo "press any key to continue"
read 
runqemu slirp nographic