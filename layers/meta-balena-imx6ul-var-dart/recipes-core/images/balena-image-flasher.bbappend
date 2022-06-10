include balena-image.inc

# The machine conf forces some unwanted types
# Remnove them all
IMAGE_FSTYPES_imx6ul-var-dart = ""

BALENA_BOOT_PARTITION_FILES_append_imx6ul-var-dart = " \
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

BALENA_BOOT_PARTITION_FILES_append_var-som-mx6 = " \
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
"

BALENA_BOOT_PARTITION_FILES_append_imx7-var-som = " \
    imx7d-var-som-emmc-m4.dtb:/imx7d-var-som-emmc-m4.dtb \
    imx7d-var-som-emmc.dtb:/imx7d-var-som-emmc.dtb \
    imx7d-var-som-nand-m4.dtb:/imx7d-var-som-nand-m4.dtb \
    imx7d-var-som-nand.dtb:/imx7d-var-som-nand.dtb \
"

