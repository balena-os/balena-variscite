# Customize balenaos-img

IMAGE_CMD_balenaos-img:append:imx6ul-var-dart () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${BALENA_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${BALENA_RAW_IMG} conv=notrunc seek=69 bs=1K
}

BALENA_BOOT_PARTITION_FILES:var-som-mx6 = " \
    uImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/uImage \
    ${SPL_BINARY}-nand: \
    u-boot-${MACHINE}.img-nand: \
"

IMAGE_CMD_balenaos-img:append:var-som-mx6 () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${BALENA_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${BALENA_RAW_IMG} conv=notrunc seek=69 bs=1K
}

IMAGE_CMD_balenaos-img:append:imx7-var-som () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY}-sd of=${BALENA_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img-sd of=${BALENA_RAW_IMG} conv=notrunc seek=69 bs=1K
}

IMAGE_INSTALL:append = " \
	kernel-devicetree \
"

IMAGE_INSTALL:append:imx7-var-som = " \
				     bcm43xx-utils \
				     linux-firmware-bcm4339 \
				     linux-firmware-bcm43430 \
				     brcm-patchram-plus \
				     pm-utils \
				     pm-services \
"

IMAGE_INSTALL:append:imx6ul-var-dart = " \
    bcm43xx-utils \
    linux-firmware-bcm4339 \
    linux-firmware-bcm43430 \
    brcm-patchram-plus \
    pm-utils \
    pm-services \
"

IMAGE_INSTALL:append:var-som-mx6 = " \
    mtd-utils \
    imx-kobs \
"

do_image_balenaos-img[depends] += " virtual/bootloader:do_deploy"

# we do not use some packages installed by the BSP
IMAGE_INSTALL:remove = "packagegroup-tools-bluetooth"
IMAGE_INSTALL:remove = "packagegroup-variscite-devel"
