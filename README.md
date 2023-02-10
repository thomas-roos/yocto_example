# checkout:
```
git clone --recurse-submodules https://github.com/thomas-roos/yocto_example.git
```
# build the image:
```
cd yocto_example
./build.sh
```
# this repo was build with:
```
mkdir yocto_example
cd yocto_example
git init
git submodule add -b master https://git.yoctoproject.org/poky
git submodule add -b master https://github.com/openembedded/meta-openembedded.git 
git submodule add -b master https://github.com/aws4embeddedlinux/meta-aws.git 
source poky/oe-init-build-env build
bitbake-layers add-layer ../meta-openembedded/meta-oe
bitbake-layers add-layer ../meta-openembedded/meta-python
bitbake-layers add-layer ../meta-openembedded/meta-networking
bitbake-layers add-layer ../meta-aws
bitbake-layers create-layer ../meta-example
bitbake-layers add-layer ../meta-example
git add conf/local.conf
git add conf/bblayers.conf
echo 'DL_DIR = "${TOPDIR}/../../downloads"' >> conf/local.conf 
echo 'SSTATE_DIR ?= "${TOPDIR}/../../sstate-cache"' >> conf/local.conf 
cd ..
echo "build/*" >> .gitignore
git add .gitignore

manually change build/conf/bblayers.conf path
  ${TOPDIR}/../poky/meta \
  ${TOPDIR}/../poky/meta-poky \
  ${TOPDIR}/../poky/meta-yocto-bsp \
  ${TOPDIR}/../meta-openembedded/meta-oe \
  ${TOPDIR}/../meta-openembedded/meta-python \
  ${TOPDIR}/../meta-openembedded/meta-networking \
  ${TOPDIR}/../meta-aws \

git commit -m "Initial commit"
```