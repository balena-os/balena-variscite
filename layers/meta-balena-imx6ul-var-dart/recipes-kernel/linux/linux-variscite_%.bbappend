FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"
inherit kernel-resin

RESIN_CONFIGS_append_var-som-mx6 = " no_panic_reboot"

RESIN_CONFIGS[no_panic_reboot] = " \
	CONFIG_PANIC_TIMEOUT=0 \
"

SRC_URI_append_imx7-var-som = " \
	file://0001-Add-LED-D10-as-identification-led.patch \
"
