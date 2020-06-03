IMAGE_FSTYPES_append_imx6ul-var-dart = " resinos-img"
IMAGE_FSTYPES_append_var-som-mx6 = " resinos-img"
IMAGE_FSTYPES_append_imx7-var-som = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_imx6ul-var-dart = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
    ${MACHINE}-6ulcustomboard-emmc-sd-card.dtb:/ \
    ${MACHINE}-6ulcustomboard-emmc-wifi.dtb:/ \
    ${MACHINE}-6ulcustomboard-nand-sd-card.dtb:/ \
    ${MACHINE}-6ulcustomboard-nand-wifi.dtb:/ \
    imx6ul-var-som-concerto-board-emmc-sd-card.dtb:/ \
    imx6ul-var-som-concerto-board-emmc-wifi.dtb:/ \
    imx6ul-var-som-concerto-board-nand-sd-card.dtb:/ \
    imx6ul-var-som-concerto-board-nand-wifi.dtb:/ \
    imx6ull-var-dart-6ulcustomboard-emmc-sd-card.dtb:/ \
    imx6ull-var-dart-6ulcustomboard-emmc-wifi.dtb:/ \
    imx6ull-var-dart-6ulcustomboard-nand-sd-card.dtb:/ \
    imx6ull-var-dart-6ulcustomboard-nand-wifi.dtb:/ \
    imx6ull-var-som-concerto-board-emmc-sd-card.dtb:/ \
    imx6ull-var-som-concerto-board-emmc-wifi.dtb:/ \
    imx6ull-var-som-concerto-board-nand-sd-card.dtb:/ \
    imx6ull-var-som-concerto-board-nand-wifi.dtb:/ \
    imx6ulz-var-dart-6ulcustomboard-emmc-sd-card.dtb:/ \
    imx6ulz-var-dart-6ulcustomboard-emmc-wifi.dtb:/ \
    imx6ulz-var-dart-6ulcustomboard-nand-sd-card.dtb:/ \
    imx6ulz-var-dart-6ulcustomboard-nand-wifi.dtb:/ \
    imx6ulz-var-som-concerto-board-emmc-sd-card.dtb:/ \
    imx6ulz-var-som-concerto-board-emmc-wifi.dtb:/ \
    imx6ulz-var-som-concerto-board-nand-sd-card.dtb:/ \
    imx6ulz-var-som-concerto-board-nand-wifi.dtb:/ \
    "

IMAGE_CMD_resinos-img_append_imx6ul-var-dart () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${RESIN_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${RESIN_RAW_IMG} conv=notrunc seek=69 bs=1K
}

RESIN_BOOT_PARTITION_FILES_var-som-mx6 = " \
    uImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/uImage \
    imx6dl-var-som-cap.dtb:/imx6dl-var-som-cap.dtb \
    imx6dl-var-som-res.dtb:/imx6dl-var-som-res.dtb \
    imx6dl-var-som-solo-cap.dtb:/imx6dl-var-som-solo-cap.dtb \
    imx6dl-var-som-solo-res.dtb:/imx6dl-var-som-solo-res.dtb \
    imx6dl-var-som-solo-vsc.dtb:/imx6dl-var-som-solo-vsc.dtb \
    imx6dl-var-som-vsc.dtb:/imx6dl-var-som-vsc.dtb \
    imx6q-var-dart.dtb:/imx6q-var-dart.dtb \
    imx6q-var-som-cap.dtb:/imx6q-var-som-cap.dtb \
    imx6q-var-som-res.dtb:/imx6q-var-som-res.dtb \
    imx6q-var-som-vsc.dtb:/imx6q-var-som-vsc.dtb \
    imx6qp-var-som-cap.dtb:/imx6qp-var-som-cap.dtb \
    imx6qp-var-som-res.dtb:/imx6qp-var-som-res.dtb \
    imx6qp-var-som-vsc.dtb:/imx6qp-var-som-vsc.dtb \
    ${SPL_BINARY}-nand: \
    u-boot-${MACHINE}.img-nand: \
    "

IMAGE_CMD_resinos-img_append_var-som-mx6 () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${RESIN_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${RESIN_RAW_IMG} conv=notrunc seek=69 bs=1K
}

RESIN_BOOT_PARTITION_FILES_imx7-var-som = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
    imx7d-var-som-emmc-m4.dtb:/imx7d-var-som-emmc-m4.dtb \
    imx7d-var-som-emmc.dtb:/imx7d-var-som-emmc.dtb \
    imx7d-var-som-nand-m4.dtb:/imx7d-var-som-nand-m4.dtb \
    imx7d-var-som-nand.dtb:/imx7d-var-som-nand.dtb \
    "

IMAGE_CMD_resinos-img_append_imx7-var-som () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY}-sd of=${RESIN_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img-sd of=${RESIN_RAW_IMG} conv=notrunc seek=69 bs=1K
}

IMAGE_INSTALL_append_imx7-var-som = " \
				     bcm43xx-utils \
				     linux-firmware-bcm4339 \
				     linux-firmware-bcm43430 \
				     brcm-patchram-plus \
				     pm-utils \
				     pm-services \
"

IMAGE_INSTALL_append_imx6ul-var-dart = " \
    bcm43xx-utils \
    linux-firmware-bcm4339 \
    linux-firmware-bcm43430 \
    brcm-patchram-plus \
    pm-utils \
    pm-services \
"

IMAGE_INSTALL_append_var-som-mx6 = " \
    mtd-utils \
    imx-kobs \
"

do_image_resinos-img[depends] += " virtual/bootloader:do_deploy"
