UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_append := ":${THISDIR}/patches"
SRC_URI_append = " \
    file://imx6ul-var-dart-integrate-with-resin-configuration.patch \
    file://0001-Fix-SPL-compile-error-with-gcc-7.3.0.patch \
    file://mx6-var-som-integrate-with-resin-configuration.patch \
    file://mx7-var-som-integrate-with-balena-configuration.patch \
"
SRC_URI_append_imx7-var-som = " \
    file://0001-Revert-imx-mx7-spl-Support-mask-3N09P-of-i.MX7-revis.patch \
"
# u-boot wants to build a libfdt Python module
inherit pythonnative
