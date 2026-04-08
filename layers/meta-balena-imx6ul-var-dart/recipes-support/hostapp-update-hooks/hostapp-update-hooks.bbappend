FILESEXTRAPATHS:append := ":${THISDIR}/files"

HOSTAPP_HOOKS:append:var-som-mx6 = " \
    99-resin-uboot \
    99-flash-bootloader-var-som-mx6 \
"
