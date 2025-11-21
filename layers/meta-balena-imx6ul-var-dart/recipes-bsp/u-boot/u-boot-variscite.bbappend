inherit resin-u-boot
FILESEXTRAPATHS:append := ":${THISDIR}/patches"

SRC_URI:append:imx6ul-var-dart = " \
    file://imx6ul-var-dart-integrate-with-resin-configuration.patch \
"

SRC_URI:append:var-som-mx6 = " \
    file://mx6-var-som-integrate-with-resin-configuration.patch \
    file://0001-Load-kernel-and-rootfs-from-MMC-when-booting-from-NA.patch \
    file://0001-load-splash-emmc.patch \
    file://0001-mx6-var-som-Load-dtb-and-kernel-from-rootfs.patch \
"

SRC_URI:append:imx7-var-som = " \
    file://mx7-var-som-integrate-with-balena-configuration.patch \
"
