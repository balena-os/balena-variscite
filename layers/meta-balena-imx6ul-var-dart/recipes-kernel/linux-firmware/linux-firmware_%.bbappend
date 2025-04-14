# These URIs no longer work
SRC_URI_remove = "git://git.ti.com/git/wilink8-wlan/wl18xx_fw.git;protocol=https;branch=${BRANCH_tiwlan};destsuffix=tiwlan;name=tiwlan"
SRC_URI_remove = "git://git.ti.com/git/ti-bt/service-packs.git;protocol=https;branch=${BRANCH_tibt};destsuffix=tibt;name=tibt"

SRC_URI_append = " \
    git://git.ti.com/wilink8-wlan/wl18xx_fw.git;protocol=git;destsuffix=tiwlan;name=tiwlan \
    git://git.ti.com/ti-bt/service-packs.git;protocol=git;destsuffix=tibt;name=tibt \
"
