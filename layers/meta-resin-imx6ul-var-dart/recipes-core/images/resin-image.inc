IMAGE_FSTYPES_append_imx6ul-var-dart = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_imx6ul-var-dart = " \
    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
    zImage-${MACHINE}-emmc_wifi.dtb:/${MACHINE}-emmc_wifi.dtb \
    zImage-${MACHINE}-nand_wifi.dtb:/${MACHINE}-nand_wifi.dtb \
    zImage-${MACHINE}-sd_emmc.dtb:/${MACHINE}-sd_emmc.dtb \
    zImage-${MACHINE}-sd_nand.dtb:/${MACHINE}-sd_nand.dtb \
    "

IMAGE_CMD_resinos-img_append_imx6ul-var-dart () {
    dd if=${DEPLOY_DIR_IMAGE}/${SPL_BINARY} of=${RESIN_RAW_IMG} conv=notrunc seek=2 bs=512
    dd if=${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.${UBOOT_SUFFIX_SDCARD} of=${RESIN_RAW_IMG} conv=notrunc seek=69 bs=1K
}
