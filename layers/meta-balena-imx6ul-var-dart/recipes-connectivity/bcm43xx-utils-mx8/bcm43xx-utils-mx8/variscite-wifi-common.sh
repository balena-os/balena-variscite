# Setup WIFI control GPIOs
wifi_setup()
{
	if [ ! -d /sys/class/gpio/gpio${WIFI_VSEL_GPIO} ]; then
		echo ${WIFI_VSEL_GPIO} > /sys/class/gpio/export
		echo out > /sys/class/gpio/gpio${WIFI_VSEL_GPIO}/direction
	fi

	if [ ! -d /sys/class/gpio/gpio${WIFI_PWR_GPIO} ]; then
		echo ${WIFI_PWR_GPIO} > /sys/class/gpio/export
		echo out > /sys/class/gpio/gpio${WIFI_PWR_GPIO}/direction
	fi

	if [ ! -d /sys/class/gpio/gpio${WIFI_EN_GPIO} ]; then
		echo ${WIFI_EN_GPIO} > /sys/class/gpio/export
		echo out > /sys/class/gpio/gpio${WIFI_EN_GPIO}/direction
	fi

	if [ ! -d /sys/class/gpio/gpio${BT_BUF_GPIO} ]; then
		echo ${BT_BUF_GPIO} > /sys/class/gpio/export
		echo out > /sys/class/gpio/gpio${BT_BUF_GPIO}/direction
	fi

	if [ ! -d /sys/class/gpio/gpio${BT_EN_GPIO} ]; then
		echo ${BT_EN_GPIO} > /sys/class/gpio/export
		echo out > /sys/class/gpio/gpio${BT_EN_GPIO}/direction
	fi

	# WIFI_VSEL up
	echo 1 > /sys/class/gpio/gpio${WIFI_VSEL_GPIO}/value
	usleep 10000
}

# Check that WIFI interface exists
wifi_is_up()
{
	for i in $(seq 1 20); do
		[ -d /sys/class/net/wlan0 ] && return 0
		sleep 1
	done

	return 1
}

# Power up WIFI chip
wifi_up()
{
	# Unbind WIFI device from MMC controller
	if [ -e /sys/bus/platform/drivers/sdhci-esdhc-imx/${WIFI_MMC_HOST} ]; then
	   echo ${WIFI_MMC_HOST} > /sys/bus/platform/drivers/sdhci-esdhc-imx/unbind
        fi

	# WIFI_PWR up
	echo 1 > /sys/class/gpio/gpio${WIFI_PWR_GPIO}/value
	usleep 10000

	# WLAN_EN up
	echo 1 > /sys/class/gpio/gpio${WIFI_EN_GPIO}/value

	# BT_EN up
	echo 1 > /sys/class/gpio/gpio${BT_EN_GPIO}/value

	# BT_BUF up
	echo 0 > /sys/class/gpio/gpio${BT_BUF_GPIO}/value
	
	# Wait at least 150ms
	usleep 200000
	
	# BT_BUF down
	echo 1 > /sys/class/gpio/gpio${BT_BUF_GPIO}/value

	# BT_EN down
	echo 0 > /sys/class/gpio/gpio${BT_EN_GPIO}/value
	
	# Bind WIFI device to MMC controller
	echo ${WIFI_MMC_HOST} > /sys/bus/platform/drivers/sdhci-esdhc-imx/bind
	
	# Load WIFI driver
	modprobe brcmfmac

	# Load Ethernet driver
	modprobe fec
}

# Power down WIFI chip
wifi_down()
{
	# Unload WIFI driver
	modprobe -r brcmfmac

	# Unload Ethernet driver
	modprobe -r fec

	# Unbind WIFI device from MMC controller
	if [ -e /sys/bus/platform/drivers/sdhci-esdhc-imx/${WIFI_MMC_HOST} ]; then
	   echo ${WIFI_MMC_HOST} > /sys/bus/platform/drivers/sdhci-esdhc-imx/unbind
	fi

	# WLAN_EN down
	echo 0 > /sys/class/gpio/gpio${WIFI_EN_GPIO}/value

	# BT_BUF down
	echo 1 > /sys/class/gpio/gpio${BT_BUF_GPIO}/value

	# BT_EN down
	echo 0 > /sys/class/gpio/gpio${BT_EN_GPIO}/value
	usleep 10000

	# WIFI power down
	echo 0 > /sys/class/gpio/gpio${WIFI_PWR_GPIO}/value
}

