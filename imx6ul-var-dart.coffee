deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

SET_JUMPER_SD_BOOT = 'Set SW1 and SW2 dip switches to 0(off position). Power up the <%= TYPE_NAME %>.'
SET_JUMPER_EMMC_BOOT = 'Set SW2 dip switch to 1(on position).'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	SET_JUMPER_EMMC_BOOT
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'imx6ul-var-dart'
	name: 'Variscite DART-6UL'
	arch: 'armv7hf'
	state: 'released'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		SET_JUMPER_SD_BOOT
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'

	yocto:
		machine: 'imx6ul-var-dart'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-thud'
		deployArtifact: 'balena-image-flasher-imx6ul-var-dart.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
