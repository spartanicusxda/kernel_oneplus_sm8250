# SPDX-License-Identifier: GPL-2.0

ifeq ($(CONFIG_MACH_SM8250_OP_GLOBAL),y)
	dtbo-y += \
		oneplus8-overlay.dtbo \
		oneplus8p-overlay.dtbo \
		oneplus8t-overlay.dtbo \
		oneplus8v-overlay.dtbo \
		oneplus9r-overlay.dtbo

oneplus8-overlay.dtbo-base := kona-v2.1.dtb
oneplus8p-overlay.dtbo-base := kona-v2.1.dtb
oneplus8t-overlay.dtbo-base := kona-v2.1.dtb
oneplus8v-overlay.dtbo-base := kona-v2.1.dtb
oneplus9r-overlay.dtbo-base := kona-v2.1.dtb
endif

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files    := *.dtb *.dtbo
