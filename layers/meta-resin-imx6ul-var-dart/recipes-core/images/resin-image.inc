IMAGE_FSTYPES_append_imx6ul-var-dart = " resinos-img"
IMAGE_FSTYPES_append_var-som-mx6 = " resinos-img"
IMAGE_FSTYPES_append_imx7-var-som = " resinos-img"
IMAGE_FSTYPES_append_imx8m-var-dart = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_imx6ul-var-dart = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
    zImage-${MACHINE}-emmc_wifi.dtb:/${MACHINE}-emmc_wifi.dtb \
    zImage-${MACHINE}-nand_wifi.dtb:/${MACHINE}-nand_wifi.dtb \
    zImage-${MACHINE}-sd_emmc.dtb:/${MACHINE}-sd_emmc.dtb \
    zImage-${MACHINE}-sd_nand.dtb:/${MACHINE}-sd_nand.dtb \
    zImage-imx6ull-var-dart-emmc_wifi.dtb:/imx6ull-var-dart-emmc_wifi.dtb \
    zImage-imx6ull-var-dart-5g-emmc_wifi.dtb:/imx6ull-var-dart-5g-emmc_wifi.dtb \
    zImage-imx6ull-var-dart-sd_emmc.dtb:/imx6ull-var-dart-sd_emmc.dtb \
    zImage-imx6ull-var-dart-nand_wifi.dtb:/imx6ull-var-dart-nand_wifi.dtb \
    zImage-imx6ull-var-dart-5g-nand_wifi.dtb:/imx6ull-var-dart-5g-nand_wifi.dtb \
    zImage-imx6ull-var-dart-sd_nand.dtb:/imx6ull-var-dart-sd_nand.dtb \
    "

IMAGE_CMD_resinos-img_append_imx6ul-var-dart () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${RESIN_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${RESIN_RAW_IMG} conv=notrunc seek=69 bs=1K
}

RESIN_BOOT_PARTITION_FILES_var-som-mx6 = " \
    uImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/uImage \
    uImage-imx6dl-var-som-cap.dtb:/imx6dl-var-som-cap.dtb \
    uImage-imx6dl-var-som-res.dtb:/imx6dl-var-som-res.dtb \
    uImage-imx6dl-var-som-solo-cap.dtb:/imx6dl-var-som-solo-cap.dtb \
    uImage-imx6dl-var-som-solo-res.dtb:/imx6dl-var-som-solo-res.dtb \
    uImage-imx6dl-var-som-solo-vsc.dtb:/imx6dl-var-som-solo-vsc.dtb \
    uImage-imx6dl-var-som-vsc.dtb:/imx6dl-var-som-vsc.dtb \
    uImage-imx6q-var-dart.dtb:/imx6q-var-dart.dtb \
    uImage-imx6q-var-som-cap.dtb:/imx6q-var-som-cap.dtb \
    uImage-imx6q-var-som-res.dtb:/imx6q-var-som-res.dtb \
    uImage-imx6q-var-som-vsc.dtb:/imx6q-var-som-vsc.dtb \
    uImage-imx6qp-var-som-cap.dtb:/imx6qp-var-som-cap.dtb \
    uImage-imx6qp-var-som-res.dtb:/imx6qp-var-som-res.dtb \
    uImage-imx6qp-var-som-vsc.dtb:/imx6qp-var-som-vsc.dtb \
    ${SPL_BINARY}-nand: \
    u-boot-${MACHINE}.img-nand: \
    "

IMAGE_CMD_resinos-img_append_var-som-mx6 () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${RESIN_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.img of=${RESIN_RAW_IMG} conv=notrunc seek=69 bs=1K
}

RESIN_BOOT_PARTITION_FILES_imx7-var-som = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
    zImage-imx7d-var-som-emmc-m4.dtb:/imx7d-var-som-emmc-m4.dtb \
    zImage-imx7d-var-som-emmc.dtb:/imx7d-var-som-emmc.dtb \
    zImage-imx7d-var-som-nand-m4.dtb:/imx7d-var-som-nand-m4.dtb \
    zImage-imx7d-var-som-nand.dtb:/imx7d-var-som-nand.dtb \
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
"

IMAGE_INSTALL_append_imx6ul-var-dart = " \
    bcm43xx-utils \
    linux-firmware-bcm4339 \
    linux-firmware-bcm43430 \
    brcm-patchram-plus \
"

RESIN_BOOT_PARTITION_FILES_imx8m-var-dart = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-emmc-wifi-hdmi-4k.dtb:/imx8m-var-dart-emmc-wifi-hdmi-4k.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-sd-emmc-hdmi-4k.dtb:/imx8m-var-dart-sd-emmc-hdmi-4k.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-emmc-wifi-dcss-lvds.dtb:/imx8m-var-dart-emmc-wifi-dcss-lvds.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-emmc-wifi-dual-display.dtb:/imx8m-var-dart-emmc-wifi-dual-display.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-emmc-wifi-hdmi.dtb:/imx8m-var-dart-emmc-wifi-hdmi.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-emmc-wifi-lcdif-lvds.dtb:/imx8m-var-dart-emmc-wifi-lcdif-lvds.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-sd-emmc-dcss-lvds.dtb:/imx8m-var-dart-sd-emmc-dcss-lvds.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-sd-emmc-dual-display.dtb:/imx8m-var-dart-sd-emmc-dual-display.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-sd-emmc-hdmi.dtb:/imx8m-var-dart-sd-emmc-hdmi.dtb \
    ${KERNEL_IMAGETYPE}-imx8m-var-dart-sd-emmc-lcdif-lvds.dtb:/imx8m-var-dart-sd-emmc-lcdif-lvds.dtb \
    imx8m-var-dart.dtb: \
    "

IMAGE_INSTALL_append_imx8m-var-dart = " \
                                        imx-boot \
                                        linux-firmware-bcm4339 \
                                        bcm43xx-utils-mx8 \
                                        brcm-patchram-plus \
                                        kernel-modules \
                                        bluez5 \
"

IMAGE_CMD_resinos-img_append_imx8m-var-dart () {
    dd if=${DEPLOY_DIR_IMAGE}/imx-boot-tools/imx-boot-sd.bin of=${RESIN_RAW_IMG} conv=notrunc seek=33 bs=1K
}

IMAGE_INSTALL_append_var-som-mx6 = " \
    mtd-utils \
    imx-kobs \
"
