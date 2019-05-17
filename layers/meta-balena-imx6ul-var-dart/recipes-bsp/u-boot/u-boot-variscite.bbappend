UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

DEPENDS_append = " dtc-native"

FILESEXTRAPATHS_append := ":${THISDIR}/patches"

SRC_URI_append = " \
    file://0001-Add-support-for-OS_KERNEL_CMDLINE.patch \
    file://imx6ul-var-dart-integrate-with-resin-configuration.patch \ 
    file://mx6-var-som-integrate-with-resin-configuration.patch \
    file://mx7-var-som-integrate-with-balena-configuration.patch \
"

SRC_URI_append_var-som-mx6 = " \
    file://0001-Load-kernel-and-rootfs-from-MMC-when-booting-from-NA.patch \
    file://0001-load-splash-emmc.patch \
"

SRC_URI_append_imx7-var-som = " \
    file://0001-Revert-imx-mx7-spl-Support-mask-3N09P-of-i.MX7-revis.patch \
"

do_generate_resin_uboot_configuration_append() {
    fl = open(os.path.join(d.getVar('S'), 'include', 'config_resin.h'), 'a')
    fl.write("#define %s %s\n" % ('OS_KERNEL_CMDLINE', d.getVar('OS_KERNEL_CMDLINE')))
}

PROVIDES += "u-boot"

COMPATIBLE_MACHINE = "(var-som-mx6|imx6ul-var-dart|imx7-var-som)"
 
S = "${WORKDIR}/git"
# u-boot wants to build a libfdt Python module
inherit pythonnative
