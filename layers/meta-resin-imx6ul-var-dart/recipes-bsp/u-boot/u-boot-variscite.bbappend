UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

DEPENDS_append = " dtc-native"

FILESEXTRAPATHS_append := ":${THISDIR}/patches"

UBOOT_SRC_imx8m-var-dart = "git://github.com/varigit/uboot-imx;protocol=git"
SRCBRANCH_imx8m-var-dart = "imx_v2017.03_4.9.51_imx8m_ga_var01"
SRC_URI_imx8m-var-dart = "${UBOOT_SRC_imx8m-var-dart};branch=${SRCBRANCH_imx8m-var-dart}"
SRCREV_imx8m-var-dart = "02c2d66c115140909cd412633281fb874b1f5a56"

SRC_URI_append = " \
    file://imx6ul-var-dart-integrate-with-resin-configuration.patch \
    file://0001-Fix-SPL-compile-error-with-gcc-7.3.0.patch \
    file://mx6-var-som-integrate-with-resin-configuration.patch \
    file://mx7-var-som-integrate-with-balena-configuration.patch \
    file://0001-Load-kernel-and-rootfs-from-MMC-when-booting-from-NA.patch \
    file://0001-load-splash-emmc.patch \
"
SRC_URI_append_imx7-var-som = " \
    file://0001-Revert-imx-mx7-spl-Support-mask-3N09P-of-i.MX7-revis.patch \
"

SRC_URI_append_imx8m-var-dart = " \
    file://mx8m-var-dart-integrate-with-balena-configuration.patch \
    file://imx8m-var-dart-Use-wifi-dtb-if-booting-from-emmc.patch \
    "

SRC_URI_remove_imx8m-var-dart = " \
    file://imx6ul-var-dart-integrate-with-resin-configuration.patch \
    file://0001-Fix-SPL-compile-error-with-gcc-7.3.0.patch \
    file://mx6-var-som-integrate-with-resin-configuration.patch \
    file://mx7-var-som-integrate-with-balena-configuration.patch \
"

LOCALVERSION_imx8m-var-dart = "-mx8"

PROVIDES += "u-boot"

COMPATIBLE_MACHINE = "(var-som-mx6|imx6ul-var-dart|imx7-var-som|imx8m-var-dart)"
 
S = "${WORKDIR}/git"
# u-boot wants to build a libfdt Python module
inherit pythonnative

UBOOT_NAME_mx8 = "u-boot-${MACHINE}.bin-${UBOOT_CONFIG}"

BOOT_TOOLS = "imx-boot-tools"

do_deploy_append_mx8mq () {
    # Deploy the mkimage, u-boot-nodtb.bin and imx8m-var-dart.dtb for mkimage to generate boot binary
    if [ -n "${UBOOT_CONFIG}" ]
    then
        for config in ${UBOOT_MACHINE}; do
            i=$(expr $i + 1);
            for type in ${UBOOT_CONFIG}; do
                j=$(expr $j + 1);
                if [ $j -eq $i ]
                then
                    install -d ${DEPLOYDIR}/${BOOT_TOOLS}
                    install -m 0777 ${B}/${config}/arch/arm/dts/imx8m-var-dart.dtb  ${DEPLOYDIR}/${BOOT_TOOLS}
                    install -m 0777 ${B}/${config}/arch/arm/dts/imx8m-var-dart.dtb  ${DEPLOYDIR}/
                    install -m 0777 ${B}/${config}/tools/mkimage  ${DEPLOYDIR}/${BOOT_TOOLS}/mkimage_uboot
                    install -m 0777 ${B}/${config}/u-boot-nodtb.bin  ${DEPLOYDIR}/${BOOT_TOOLS}
                fi
            done
            unset  j
        done
        unset  i
    fi
}
