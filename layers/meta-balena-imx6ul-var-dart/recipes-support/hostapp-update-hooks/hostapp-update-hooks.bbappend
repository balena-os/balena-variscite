FILESEXTRAPATHS:append := ":${THISDIR}/files"

HOSTAPP_HOOKS:append:imx6ul-var-dart = " \
    99-resin-uboot \
    99-flash-bootloader-var-dart \
"

HOSTAPP_HOOKS:append:var-som-mx6 = " \
    99-resin-uboot \
    99-flash-bootloader-var-som-mx6 \
"

HOSTAPP_HOOKS:append:imx7-var-som = " \
    99-resin-uboot \
    99-flash-bootloader-imx7-var-som \
"
