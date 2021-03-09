UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

DEPENDS_append = " dtc-native"

FILESEXTRAPATHS_append := ":${THISDIR}/patches"

SRC_URI_append = " \
    file://imx6ul-var-dart-integrate-with-resin-configuration.patch \
    file://0001-Fix-SPL-compile-error-with-gcc-7.3.0.patch \
    file://mx6-var-som-integrate-with-resin-configuration.patch \
    file://mx7-var-som-integrate-with-balena-configuration.patch \
    file://0001-fat-Fix-file-write-failure-when-saving-bootcount.patch \
"

SRC_URI_append_var-som-mx6 = " \
    file://0001-Load-kernel-and-rootfs-from-MMC-when-booting-from-NA.patch \
    file://0001-load-splash-emmc.patch \
"

PROVIDES += "u-boot"

COMPATIBLE_MACHINE = "(var-som-mx6|imx6ul-var-dart|imx7-var-som)"
 
S = "${WORKDIR}/git"
# u-boot wants to build a libfdt Python module
inherit pythonnative
