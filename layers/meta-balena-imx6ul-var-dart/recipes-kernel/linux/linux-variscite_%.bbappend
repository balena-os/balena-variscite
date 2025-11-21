inherit kernel-balena

FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " \
	file://0002-USB-serial-Add-support-for-more-Quectel-modules.patch \
"

SRC_URI:append:imx6ul-var-dart = " \
	file://0001-imx6ul-var-dart-Enable-SPI-in-dts.patch \
"

SRC_URI:append:imx7-var-som = " \
	file://0001-Add-LED-D10-as-identification-led.patch \
"
