inherit kernel-resin

RESIN_CONFIGS_append_var-som-mx6 = " no_panic_reboot"

RESIN_CONFIGS[no_panic_reboot] = " \
	CONFIG_PANIC_TIMEOUT=0 \
"
