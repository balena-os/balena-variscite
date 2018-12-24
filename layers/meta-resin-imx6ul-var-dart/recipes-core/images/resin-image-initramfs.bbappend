# we need to redo this assignment here because the bsp (https://github.com/varigit/meta-variscite-imx/blob/Krogoth-imx-4.1.15-var01/conf/machine/imx6ul-var-dart.conf#L103)
# will add an override for all existing image types (including our initramfs image) and this would make the build break with initramfs related circular dependency errors
IMAGE_FSTYPES_imx6ul-var-dart = "${INITRAMFS_FSTYPES}"
IMAGE_FSTYPES_imx8m-var-dart  = "${INITRAMFS_FSTYPES}"
