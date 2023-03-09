#!/bin/bash
source poky/oe-init-build-env build
time bitbake core-image-minimal
