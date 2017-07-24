deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

GOOEE_DART_6_UL_FLASH = 'Power up the <%= TYPE_NAME %>. Holding down the SW2 button, press the SW1 button and then first release SW1 followed by SW2.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'imx6ul-var-dart'
	name: 'Variscite DART-6UL'
	arch: 'armv7hf'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		GOOEE_DART_6_UL_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: true

	yocto:
		machine: 'imx6ul-var-dart'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-krogoth'
		deployArtifact: 'resin-image-imx6ul-var-dart.resinos-img'
		deployFlasherArtifact: 'resin-image-flasher-imx6ul-var-dart.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
