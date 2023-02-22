#!/bin/bash
source poky/oe-init-build-env build 
time bitbake aws-sdk-cpp --runall=fetch
