include resin-image.inc

# The machine conf forces some unwanted types
# Overwrite them by a conditional resinhup package (tar)
IMAGE_FSTYPES_imx6ul-var-dart = " ${@bb.utils.contains('RESINHUP', 'yes', 'tar', '', d)}"

# deploy the SPL and u-boot binary in resin-boot (will be needed by hostapps for updating the bootloader)
RESIN_BOOT_PARTITION_FILES_append_imx6ul-var-dart = " \
    ${SPL_BINARY}: \
    u-boot-${MACHINE}.img: \
"

RESIN_BOOT_PARTITION_FILES_append_var-som-mx6 = " \
    ${SPL_BINARY}: \
    u-boot-${MACHINE}.img: \
"

RESIN_BOOT_PARTITION_FILES_append_imx7-var-som = " \
    ${SPL_BINARY}: \
    u-boot-${MACHINE}.img: \
"

RESIN_BOOT_PARTITION_FILES_append_imx8m-var-dart = " \
    imx-boot-tools/imx-boot-sd.bin:/imx-boot-sd.bin \
"
