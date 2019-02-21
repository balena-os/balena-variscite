Change log
-----------

# v2.29.2+rev4
## (2019-02-20)

* Add services to fix WiFi/BT resume issues [Alexandru Costache]

# v2.29.2+rev3
## (2019-02-06)

* Added LED2 as identification led [Alexandru Costache]

# v2.29.2+rev2
## (2019-02-04)

* u-boot-variscite: Apply NAND patches only for var-som-mx6 machine [Sebastian Panceac]

# v2.29.2+rev1
## (2019-01-22)

* hostapp-update-hooks: Modify hooks for NAND flashing of SPL and u-boot [Sebastian Panceac]
* linux-variscite: Disable reboot on kernel panic [Sebastian Panceac]
* u-boot-variscite: Prepare for var-som-mx6 eMMC booting [Sebastian Panceac]
* Update meta-resin from 2.29.0 to 2.29.2 [Sebastian Panceac]

# v2.29.0+rev2
## (2019-01-07)

* Add icon for IMX8M-VAR-DART [Alexandru Costache]

# v2.29.0+rev1
## (2019-01-04)

* Update meta-resin from 2.28.0 to 2.29.0 [Alexandru Costache]

<details>
<summary> View details </summary>

## meta-resin-2.29.0
### (2018-12-19)

* OS will default apps.json to an empty json file [Andrei Gherzan]
* Update balena-engine to include low entropy fixes [Andrei Gherzan]
* Move an NM patch to the right place to reduce a warning [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v9.0.1 [Pablo Carranza Velez]
* Fix cases where RESIN_BOOT_PARTITION_FILES includes invalid entries [Andrei Gherzan]
* Enable some common linux kernel serial device drivers [Andrei Gherzan]
* Configure NetworkManager to only ignore our vpn interface but manage other tun devices [Andrei Gherzan]
* networkmanager: Add pppd to FILES [Zubair Lutfullah Kakakhel]
* networkmanager: Add balena-client-id.patch in bbappend [Zubair Lutfullah Kakakhel]
* Bump network manager from v1.12.2 to v1.14.4 [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v8.7.0 [Pablo Carranza Velez]
* Fix test cases for kernel module header compilation [Zubair Lutfullah Kakakhel]
* Add chrony v3.2 recipe in various layers to keep minimum chrony version on devices above v3.2 [Zubair Lutfullah Kakakhel]
* chrony/pyro: Add v3.2 recipe [Zubair Lutfullah Kakakhel]
* chrony/morty: Add v3.2 recipe [Zubair Lutfullah Kakakhel]
* chrony/krogoth: Bump recipe version to v3.2 [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v8.6.8 [Zubair Lutfullah Kakakhel]
</details>

* Added coffee file for imx8m-var-dart [Alexandru Costache]

# v2.28.0+rev2
## (2018-12-11)

# v2.28.0+rev1
## (2018-12-06)

* Update meta-resin from v2.26.0 to v2.28.0 [Alexandru Costache]

<details>
<summary> View details </summary>

## meta-resin-2.28.0
### (2018-12-05)

* Update os-config to 1.0.0 [Zahari Petkov]
* Update libqmi to version 1.20.2 [Florin Sarbu]
* Update libmbim to version 1.16.2 [Florin Sarbu]
* kernel-modules-headers: Add basic sanity test [Zubair Lutfullah Kakakhel]
* Fix kernel module header generation [Zubair Lutfullah Kakakhel]
* image-resin.bbclass: Fix config.json pretty format [Andrei Gherzan]
* Allow supervisor update on unmanaged devices [Andrei Gherzan]
* Update resin-supervisor to v8.6.3 [Cameron Diver]

## meta-resin-2.27.0
### (2018-11-23)

* Expose randomMacAddressScan config.json knob [Andrei Gherzan]
* Move modemmanager udev rules in /lib/udev/rules.d [Andrei Gherzan]
* Fix modemmanager bbappend files [Andrei Gherzan]
* dnsmasq: Define 8.8.8.8 as a fallback nameserver [Andrei Gherzan]
* Increase timeout for filesystem label [Vicentiu Galanopulo]
* Add support for Huawei ME936 modem in MBIM mode [Florin Sarbu]
* Backport systemd sd-shutdown improvements for sumo versions [Florin Sarbu]
* Include avahi d-bus introspection files in rootfs [Andrei Gherzan]
* Fix custom udev rules when rule is removed from config.json [Zubair Lutfullah Kakakhel]
* resin-mounts: Add NetworkManager conf.d bind mounts [Zubair Lutfullah Kakakhel]
* Add support to pass custom configuration to NetworkManager [Zubair Lutfullah Kakakhel]
* README.md: Add info about SSH and Avahi services [Andrei Gherzan]
* Avoid xtables lock in resin-proxy-config [Andrei Gherzan]
* Migrate the supervisor to balena repositories [Florin Sarbu]
* Update balena-supervisor to v8.3.5 [Cameron Diver]
* Update supported modems list [Florin Sarbu]
</details>

* Switch from resin-yocto-scripts to balena-yocto-scripts [Alexandru Costache]

# v2.26.0+rev6
## (2018-11-26)

* Add WiFi, BT firmware and dependencies to rootfs for imx6ul-var-dart [Florin Sarbu]

# v2.26.0+rev5
## (2018-11-25)

* Add icon for imx7 VAR SoM [Florin Sarbu]

# v2.26.0+rev4
## (2018-11-20)

* Clarify contribution commit guidelines [Florin Sarbu]

# v2.26.0+rev3
## (2018-11-19)

* hostapp-update-hooks: Added hooks for imx7-var-som [Alexandru Costache]
* image: Install bt & wifi tools in imx7 balena image [Alexandru Costache]
* init-flasher: Add kernel device for imx7-var-som [Alexandru Costache]
* imx7-var-som: Add coffee file for imx7-var-som [Alexandru Costache]
* u-boot-variscite: Integrate with Balena environment [Alexandru Costache]
* u-boot-variscite: Fix boot on imx7 older than D [Alexandru Costache]
* core/images: Add balena variables for imx7-var-som [Vicentiu Galanopulo]

# v2.26.0+rev2
## (2018-11-15)

* Update contribution commit guidelines [Florin Sarbu]

# v2.26.0+rev1
## (2018-11-06)

* Update the resin-yocto-scripts submodule to master HEAD [Sebastian Panceac]
* Update meta-resin submodule from v2.25.0 to v2.26.0 [Sebastian Panceac]

<details>
<summary> View details </summary>

## meta-resin-2.26.0
### (2018-11-05)

* Rename resin-unique-key to balena-unique-key [Andrei Gherzan]
* Don't let resin-unique-key rewrite config.json [Andrei Gherzan]

## meta-resin-2.25.0
### (2018-11-02)

* Generate ssh host key at first boot (not at first connection) [Andrei Gherzan]
* Fix extraneous space in kernel-resin.bbclass config [Florin Sarbu]
* Drop obsolete eval from kernel-resin's do_kernel_resin_reconfigure [Florin Sarbu]
* Add SyslogIdentifier for balena and resin-supervisor healthdog services [Matthew McGinn]
</details>

# v2.25.0+rev2
## (2018-11-06)

* var-som-mx6.coffee: Add board instruction on setting switch to boot from SD card [Sebastian Panceac]

# v2.25.0+rev1
## (2018-11-05)

* Update meta-resin from v2.19.0 to v2.25.0 [Sebastian Panceac]
* Var-som-mx6: Add coffee file for var-som-mx6 machine [Sebastian Panceac]
* Dropbear: Don't override compiler security flags [Sebastian Panceac]
* Hostapp-update-hooks: Add hooks for var-som-mx6 [Sebastian Panceac]
* Resin-image: Add var-som-mx6 specific files in boot partition [Sebastian Panceac]
* U-boot-variscite: Integrate with Balena environment [Sebastian Panceac]
* Local.conf: Accept Freescale license for graphics packages [Sebastian Panceac]
* Libdrm: Avoid applying twice the same patch [Sebastian Panceac]

# v2.19.0+rev1
## (2018-10-04)

* Update the meta-resin submodule from v2.14.3 to v2.19.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo)
* Remove duplicate packaging of bcm43143
* Set ModemManager to ignore Inca Roads Serial Device
* Add support for aufs 4.14.56+
* Update resin-supervisor to v7.19.7

## meta-resin-2.18.1
### (2018-09-14)

* Add a parsable representation of the changelog

## meta-resin-v2.18.0
### (2018-09-12)

* Update grub hooks to prepare to load kernel from root [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.19.4 [Cameron Diver]
* Kernel-resin.bbclass: Enable CONFIG_IP_NF_TARGET_LOG as a module [John (Jack) Brown]
* Balena: Update to current HEAD of 17.12-resin [Andrei Gherzan]
* Compress os-config with UPX on arm64 too [Andrei Gherzan]
* Update upx to 3.95 [Andrei Gherzan]
* Add support to skip flasher detection in env_resin.h [Zubair Lutfullah Kakakhel]
* Add the kernel to the rootfs [Zubair Lutfullah Kakakhel]
* Rework resin-supervisor systemd dependency on balena [Florin Sarbu]
* Enhanced security options for dropbear - sumo [Andrei Gherzan]
* Enhanced security options for dropbear - rocko [Andrei Gherzan]
* Enhanced security options for dropbear - pyro [Andrei Gherzan]
* Enhanced security options for dropbear - morty [Andrei Gherzan]
* Enhanced security options for dropbear - krogoth [Andrei Gherzan]

## meta-resin-2.17.0
### (2018-09-03)

* Resin-proxy-config: The no_proxy file fails to parse when missing EOL [Rich Bayliss]

## meta-resin-2.16.0
### (2018-08-31)

* Os-config: UPX is broken on aarch64 [Theodor Gherzan]
* Allow flasher types to pin preloaded devices [Theodor Gherzan]
* Disable PIE for go [Zubair Lutfullah Kakakhel]
* Disable PIE for balena [Zubair Lutfullah Kakakhel]

## meta-resin-2.15.0
### (2018-08-28)

* Bump balena version to latest 17.12-resin [Zubair Lutfullah Kakakhel]
* Update NetworkManager to 1.12.2 [Andrei Gherzan]
* Avoid os-config-devicekey / uuid service race [Andrei Gherzan]
* Move the rw copy of config.json out of /tmp for flasher [Andrei Gherzan]
* Fix dashboard feedback on fast flashing devices [Andrei Gherzan]
* Fix ucl dependency in upx [Andrei Gherzan]
* Update kernel-modules-headers to v0.0.11 [Andrei Gherzan]

## meta-resin-2.14.3
### (2018-08-13)

* Update resin supervisor to v7.16.6 [Cameron Diver]

</details>
* Remove backported overlayfs kernel patches since the BSP already has them now [Florin Sarbu]
* Switch the meta-rust submodule to the sumo branch [Florin Sarbu]
* Update the meta-openembedded submodule to sumo branch [Florin Sarbu]
* Switch BSP layer to https://github.com/varigit/meta-variscite-fslc and use the sumo branch [Florin Sarbu]
* Update the poky submodule to sumo-19.0.1 [Florin Sarbu]
* Switch from meta-fsl-arm to meta-freescale [Florin Sarbu]

# v2.14.3+rev3
## (2018-09-17)

* Add a parsable representation of the changelog [Giovanni Garufi]

# v2.14.3+rev2
## (2018-08-27)

* Add versionist support [Giovanni Garufi]

# v2.14.3+rev1
## (2018-08-14)

* Update the meta-resin submodule to version v2.14.3 [Florin]
* Update the resin-yocto-scripts submodule to 8312741e13604a9d166370349061876afb22c0fa (on master branch) [Florin]

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
