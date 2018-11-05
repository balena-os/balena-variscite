FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS_append_imx6ul-var-dart = " \
    99-resin-uboot \
    99-flash-bootloader-var-dart \
"

HOSTAPP_HOOKS_append_var-som-mx6 = " \
    99-resin-uboot \
    99-flash-bootloader-var-som-mx6 \
"
