INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MomoSVIP

MomoSVIP_FILES = Tweak.x
MomoSVIP_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += momosvip
include $(THEOS_MAKE_PATH)/aggregate.mk

export TARGET = iphone:clang:12.2:8.0
