IMAGE_FSTYPES_append_imx6ul-var-dart = " balenaos-img"
IMAGE_FSTYPES_append_var-som-mx6 = " balenaos-img"
IMAGE_FSTYPES_append_imx7-var-som = " balenaos-img"

# Customize balenaos-img
BALENA_BOOT_PARTITION_FILES_imx6ul-var-dart = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
"

IMAGE_CMD_balenaos-img_append_imx6ul-var-dart () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${BALENA_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${BALENA_RAW_IMG} conv=notrunc seek=69 bs=1K
}

BALENA_BOOT_PARTITION_FILES_var-som-mx6 = " \
    uImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/uImage \
    ${SPL_BINARY}-nand: \
    u-boot-${MACHINE}.img-nand: \
"

IMAGE_CMD_balenaos-img_append_var-som-mx6 () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${BALENA_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${BALENA_RAW_IMG} conv=notrunc seek=69 bs=1K
}

BALENA_BOOT_PARTITION_FILES_imx7-var-som = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
"

IMAGE_CMD_balenaos-img_append_imx7-var-som () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY}-sd of=${BALENA_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img-sd of=${BALENA_RAW_IMG} conv=notrunc seek=69 bs=1K
}

IMAGE_INSTALL_append = " \
	kernel-devicetree \
"

IMAGE_INSTALL_append_imx7-var-som = " \
				     bcm43xx-utils \
				     linux-firmware-bcm4339 \
				     linux-firmware-bcm43430 \
				     brcm-patchram-plus \
				     pm-utils \
				     pm-services \
				     linux-firmware-imx-sdma-imx7d \
				     firmware-imx-epdc \
"

IMAGE_INSTALL_append_imx6ul-var-dart = " \
    bcm43xx-utils \
    linux-firmware-bcm4339 \
    linux-firmware-bcm43430 \
    brcm-patchram-plus \
    pm-utils \
    pm-services \
    linux-firmware-imx-sdma-imx6q \
"

IMAGE_INSTALL_append_var-som-mx6 = " \
    mtd-utils \
    imx-kobs \
    linux-firmware-imx-sdma-imx6q \
"

do_image_balenaos-img[depends] += " virtual/bootloader:do_deploy"
