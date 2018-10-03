UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_append_imx6ul-var-dart := ":${THISDIR}/patches"
SRC_URI_append_imx6ul-var-dart = " \
    file://imx6ul-var-dart-integrate-with-resin-configuration.patch \
"
