deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

postProvisioningInstructions = [
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
		instructions.ETCHER_SD
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/dart6ul/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: true

	yocto:
		machine: 'var-som-mx6'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-sumo'
		deployArtifact: 'resin-image-var-som-mx6.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
