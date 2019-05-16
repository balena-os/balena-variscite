deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

SWITCH_SD = "Set the BOOT_SELECT switch to the MMC position"
SWITCH_NAND = "Set the BOOT_SELECT switch to the NAND position"

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	SWITCH_NAND
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'var-som-mx6'
	name: 'Variscite VAR-SOM-MX6'
	arch: 'armv7hf'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		SWITCH_SD
		instructions.ETCHER_SD
		instructions.FLASHER_WARNING
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'

	yocto:
		machine: 'var-som-mx6'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-sumo'
		deployArtifact: 'resin-image-flasher-var-som-mx6.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
