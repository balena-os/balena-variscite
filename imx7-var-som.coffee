deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

IMX7_VAR_SOM_FLASH = 'Set the SW1 BOOT SELECT switch to SDCARD. Insert SD CARD. Power up the <%= TYPE_NAME %>.'
IMX7_VAR_SOM_POST_PROVISIONING = 'The device is performing a shutdown, please wait until the  LEDs are off and the device enters post-provisioning state in Balena cloud.'
IMX7_VAR_SOM_POST_FLASH = 'Set the SW1 BOOT SELECT switch to eMMC.'

postProvisioningInstructions = [
	IMX7_VAR_SOM_POST_PROVISIONING
	instructions.REMOVE_INSTALL_MEDIA
	IMX7_VAR_SOM_POST_FLASH
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'imx7-var-som'
	name: 'Variscite VAR-SOM-MX7'
	arch: 'armv7hf'
	state: 'released'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		IMX7_VAR_SOM_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/imx7-var-som/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/imx7-var-som/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/imx7-var-som/getting-started/#adding-your-first-device'

	yocto:
		machine: 'imx7-var-som'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-scarthgap'
		deployArtifact: 'balena-image-flasher-imx7-var-som.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
