Change log
-----------

# v2.14.0+rev1
## (2018-07-18)

* Update the meta-resin submodule to version v2.14.0 [Florin]

# v2.13.6+rev1
## (2018-07-13)

* Update the meta-resin submodule to version v2.13.6 [Florin]

# v2.13.5+rev1
## (2018-07-09)

* Update the meta-resin submodule to version v2.13.5 [Florin]
* Update the resin-yocto-scripts submodule to 59ccd8558435ff6424827fb36ccb43b14650f4d4 (on master branch) [Florin]

# v2.13.3+rev1
## (2018-07-06)

* Update the meta-resin submodule to version v2.13.3 [Florin]
* Update the resin-yocto-scripts submodule to 6eddcc9a637e00dbca94815f9af0f2b7bf61eb88 (on master branch) [Florin]
* Fix overlayfs copy up opaqueness issue [Florin]

# v2.12.7+rev1
## (2018-05-04)

* Update the meta-resin submodule to version v2.12.7 [Florin]

# v2.12.6+rev1
## (2018-05-02)

* Update the meta-resin submodule to version v2.12.6 [Florin]
* Update the resin-yocto-scripts submodule to f7718efbbf53369aaacb7eb54e707ee8a5d4fc4b (on master branch) [Florin]

# v2.12.5+rev2
## (2018-03-28)

* Update the resin-yocto-scripts submodule to 9cecb1ca4d9d4713dd337148b7d04a17afdba772 (on master branch) [Florin]

# v2.12.5+rev1
## (2018-03-27)

* Update the meta-resin submodule to version v2.12.5 [Florin]
* Update the resin-yocto-scripts submodule to 51b8849e2a02d0d4e729bff24909d9746e0bf4c3 (on master branch) [Florin]

# v2.12.3+rev1
## (2018-03-16)

* Update the meta-resin submodule to version v2.12.3 [Florin]
* Update the resin-yocto-scripts submodule to dc9dfe466e48d934e55fb20a05156886873b1ab1 (on master branch) [Florin]
* Fix 99-flash-bootloader bootloader md5sum check from hostapp-update-hooks [Florin]
* Update the resin-yocto-scripts submodule to d209b8c9c797ebd52a0f5ce404ea2420c248724c (on master branch) [Florin]
* Use BALENA_STORAGE instead of DOCKER_STORAGE [Florin]

# v2.9.6+rev1
## (2018-01-13)

* Update the meta-resin submodule to version v2.9.6 [Florin]
* Add hostapp update hook that allows flashing the bootloader when doing host OS updates [Florin]
* Deploy the bootloader files to resin-boot so we can use them when doing hostOS updates [Florin]

# v2.7.8+rev2
## (2017-12-22)

* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]
* Disable FORTIFY_SOURCE security feature for dropbear to fix ssh issue [Sebastian]
* Search for flasher image only when booting from SD card [Sebastian]

# v2.7.8+rev1
## (2017-11-17)

* Update the meta-resin submodule to version v2.7.8 [Florin]
* Update the resin-yocto-scripts submodule to c4db082fd2d5a3b4857035264c1e726962d7b826 (on master branch) [Florin]

# v2.7.5+rev2
## (2017-11-03)

* Update the resin-yocto-scripts submodule to 49130dd8f1d14a33b82875d5c528fa6790df31d9 (on master branch) [Florin]

# v2.7.5+rev1
## (2017-10-31)

* Update the meta-resin submodule to version v2.7.5 [Florin]

# v2.7.4+rev2
## (2017-10-28)

* Install in the rootfs the 99-resin-uboot hostapp hook needed for u-boot to switch the root partition when doing host OS updates [Florin]

# v2.7.4+rev1
## (2017-10-26)

* Update the meta-resin submodule to version v2.7.4 [Florin]
* Update the resin-yocto-scripts submodule to e3a06d48a2f8b7e32d3047c33066a5b896e6ae93 (on master branch) [Florin]
* Switch from aufs to overlayfs for the docker storage driver [Florin]
* Update the meta-variscite-imx submodule to commit d686ad5cef31136754f082f2c5be0de652dfa7d9 from the Krogoth-imx-4.1.15-var01 branch [Florin]
* Update poky to latest krogoth branch [Will]
* Update meta-rust to morty [Will]
* Include meta-rust layer [Will]
* Add meta-rust layer [Will]

# v2.3.0+rev1
## (2017-08-17)

* Update the meta-resin submodule to version v2.3.0 [Florin]
* Update getting started links in imx6ul-var-dart.coffee [Zach]

# v2.2.0+rev1
## (2017-07-30)

* Update the meta-resin submodule to version v2.2.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.1.0+rev1
## (2017-07-24)

* Update the meta-resin submodule to version v2.1.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.0.9+rev1
## (2017-07-12)

* Update the meta-resin submodule to version v2.0.9 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.0.4+rev2
## (2017-05-23)

* Adapt patch for integration with resin-uboot [Florin]

# v2.0.4+rev1
## (2017-05-22)

* Update the meta-resin submodule to version v2.0.4 [Florin]
* Update the resin-yocto-scripts submodule [Florin]
* Update resin-yocto-scripts to master [Will]

# v2.0.2+rev2
## (2017-05-01)

* Bump resin-yocto-scripts to fix Jenkins deployment [Andrei]

# v2.0.2+rev1
## (2017-04-24)

* Update the meta-resin submodule to version v2.0.2 [Andrei]

# v2.0.0+rev4
## (2017-04-13)

* Bump resin-yocto-scripts to include compressed images in deployment too [Andrei]

# v2.0.0+rev3
## (2017-04-12)

* Bump resin-yocto-scripts to include deployment routine [Andrei]

# v2.0.0+rev2
## (2017-04-04)

* Avoid unused image types coming from BSP [Andrei]
* Bump resin-yocto-scripts to fix resinOS docker registry push [Andrei]

# v2.0.0+rev1
## (2017-04-03)

* Update the meta-resin submodule to version v2.0.0 [Andrei]
* Update .coffee flashing instructions [Florin]
* Update the meta-variscite-imx submodule [Florin]

# v2.0.0-rc5.rev1
## (2017-03-27)

* Update meta-resin to v2.0.0-rc5 [Florin]
* Initial Variscite DART imx6ul support [Florin]
