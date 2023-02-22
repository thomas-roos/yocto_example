#!/bin/bash
# source poky/oe-init-build-env build
# 
# time BB_ENV_PASSTHROUGH_ADDITIONS="PUT $BB_ENV_PASSTHROUGH_ADDITIONS" PUT="aws-sdk-cpp-ptest" bitbake core-image-minimal
# 
# time bitbake core-image-minimal -c testimage
# 
# resulttool report tmp/log/oeqa/testresults.json