DESCRIPTION = "Simple helloworld application"
SECTION = "examples"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://helloworld.c"

S = "${WORKDIR}"

OPTION = "2"

do_compile() {
	${CC} ${LDFLAGS} helloworld.c -o helloworld2
	sleep 60
}

do_install() {
	install -d ${D}${bindir}
	install -m 0755 helloworld2 ${D}${bindir}
	echo ${OPTION} > ${D}/helloworld2_option
}

FILES:${PN} += "/helloworld2_option"