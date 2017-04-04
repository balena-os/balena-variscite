include resin-image.inc

# The machine conf forces some unwanted types
# Overwrite them by a conditional resinhup package (tar)
IMAGE_FSTYPES_imx6ul-var-dart = " ${@bb.utils.contains('RESINHUP', 'yes', 'tar', '', d)}"
