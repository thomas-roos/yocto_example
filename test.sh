#!/bin/bash
source poky/oe-init-build-env build
# 
# bitbake core-image-minimal
# 
# echo "this will start qemu environment - you can exit with 'strg+a c' and then type quit"
# echo "when qemu is running log in as root without password, go to /usr/lib/aws-iot-device-sdk-cpp-v2-samples-fleet-provisoning/ptest/ and run ./run-ptest"
# echo "press any key to continue"
# read 
# runqemu slirp nographic kvm
# 
cd ../meta-aws
git bisect good d3ca2e77
git bisect bad 2f527cdffd89d6bed3a9035653ae0049b04572eb
git bisect run sh -c '''cd ../build ;  bitbake core-image-minimal ; bitbake core-image-minimal -c testimage  2>&1 | tee /dev/tty  | grep 'errors=0''''