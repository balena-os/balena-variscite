FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

SRC_URI_append_imx8m-var-dart = " \
        file://imx8m-wifi.sh \
"

FILES_${PN} += "/etc/pm/sleep.d/*"

do_install_append_imx8m-var-dart() {
	install -d ${D}/${sysconfdir}/pm/sleep.d
	install -m 0755 ${WORKDIR}/imx8m-wifi.sh ${D}/${sysconfdir}/pm/sleep.d
}
