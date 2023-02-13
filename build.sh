#!/bin/bash
source poky/oe-init-build-env build
MACHINE=qemuarm bitbake aws-sdk-cpp -D
