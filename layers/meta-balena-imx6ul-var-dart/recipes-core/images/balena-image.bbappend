include balena-image.inc

# deploy the SPL and u-boot binary in resin-boot (will be needed by hostapps for updating the bootloader)
BALENA_BOOT_PARTITION_FILES:append:imx6ul-var-dart = " \
    ${SPL_BINARY}: \
    u-boot-${MACHINE}.img: \
"

BALENA_BOOT_PARTITION_FILES:append:imx7-var-som = " \
    ${SPL_BINARY}: \
    u-boot-${MACHINE}.img: \
"
