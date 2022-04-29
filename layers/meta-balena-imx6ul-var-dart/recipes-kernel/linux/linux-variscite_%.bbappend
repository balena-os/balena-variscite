inherit kernel-resin

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

BALENA_CONFIGS_append_var-som-mx6 = " no_panic_reboot"

BALENA_CONFIGS[no_panic_reboot] = " \
	CONFIG_PANIC_TIMEOUT=0 \
"
SRC_URI_append = " \
    file://0001-More-debug.patch \
"

SRC_URI_append_imx7-var-som = " \
       file://0001-Add-LED-D10-as-identification-led.patch \
"

# This adds support for creating dummy net devices
BALENA_CONFIGS_append = " dummy"
BALENA_CONFIGS[dummy] = " \
	CONFIG_DUMMY=m \
"

# This DT does not have pcie support
BALENA_CONFIGS_imx6ul-var-dart = " pci_imx6ul"
BALENA_CONFIGS[pci_imx6ul] = " \
    CONFIG_PCI_IMX6=n \
"

PV = "${LINUX_VERSION}"
