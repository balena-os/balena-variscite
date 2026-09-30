inherit kernel-balena

# var-som-mx6 (i.MX6Q/DL/QP) has no USB3/xHCI controller, doesn't use
# any i.MX6SL/i.MX6SLL/i.MX6SX/i.MX6UL/i.MX7D hardware (its DTBs are
# all imx6q/imx6dl/imx6qp only -- covered by SOC_IMX6Q), so those
# families' clock drivers are dead code here.
BALENA_CONFIGS:append:var-som-mx6 = " core-optimization"
BALENA_CONFIGS[core-optimization] = " \
    CONFIG_CC_OPTIMIZE_FOR_SIZE=y \
    CONFIG_LOG_BUF_SHIFT=16 \
"

BALENA_CONFIGS:append:var-som-mx6 = " reduce-kernel-size"
BALENA_CONFIGS[reduce-kernel-size] = " \
    CONFIG_USB_XHCI_HCD=n \
    CONFIG_SOC_IMX6SL=n \
    CONFIG_SOC_IMX6SLL=n \
    CONFIG_SOC_IMX6SX=n \
    CONFIG_SOC_IMX6UL=n \
    CONFIG_SOC_IMX7D=n \
    CONFIG_SOC_IMX7D_CA7=n \
    CONFIG_SOC_IMX7ULP=n \
    CONFIG_MFD_DA9063=n \
    CONFIG_REGULATOR_DA9063=n \
    CONFIG_MFD_MC13XXX=n \
    CONFIG_REGULATOR_MC13783=n \
    CONFIG_MFD_WM8994=n \
    CONFIG_SND_SOC_WM8962=n \
    CONFIG_SND_SOC_WM8994=n \
    CONFIG_SND_SOC_FSL_ASOC_CARD=n \
    CONFIG_MFD_MC13XXX_SPI=n \
    CONFIG_MFD_MC13XXX_I2C=n \
    CONFIG_E1000E=n \
    CONFIG_SND_SOC_ES8328=n \
    CONFIG_SND_SOC_ES8328_I2C=n \
    CONFIG_SND_SOC_ES8328_SPI=n \
    CONFIG_SMC91X=n \
    CONFIG_SND_SOC_IMX_ES8328=n \
    CONFIG_SND_SOC_EUKREA_TLV320=n \
"
