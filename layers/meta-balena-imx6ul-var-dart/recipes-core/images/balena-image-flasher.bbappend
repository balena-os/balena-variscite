include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append:var-som-mx6 = " \
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
