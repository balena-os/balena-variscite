inherit kernel-balena

FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " \
	file://0002-USB-serial-Add-support-for-more-Quectel-modules.patch \
"
