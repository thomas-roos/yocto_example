#!/bin/bash
source poky/oe-init-build-env build

BB_ENV_PASSTHROUGH_ADDITIONS="PUT $BB_ENV_PASSTHROUGH_ADDITIONS" PUT="aws-iot-device-client-ptest" bitbake core-image-minimal

echo "this will start qemu environment - you can exit with 'strg+a c' and then type quit"
echo "when qemu is running log in as root without password, go to /usr/lib/aws-iot-device-client/ptest/ and run ./run-ptest"
echo "also gdb is installed, so gdb  ./test-aws-iot-device-client works"
echo "press any key to continue"
read 
runqemu slirp nographic