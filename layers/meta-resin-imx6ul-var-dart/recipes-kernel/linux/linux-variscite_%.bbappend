inherit kernel-resin

# remove the file that the BSP copies to kernel source directory (https://github.com/varigit/meta-variscite-imx/blob/Krogoth-imx-4.1.15-var01/recipes-kernel/linux/linux-variscite_4.1.15.bb#L38)
# we need the kernel-source directory to be as close as possible to its initial state for when creating the kernel-modules-headers archive
do_deploy_append() {
    rm ${S}/.config
}
