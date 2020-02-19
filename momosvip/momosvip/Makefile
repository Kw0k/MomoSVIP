include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = MomoSVIP

MomoSVIP_FILES = MoRootListController.m
MomoSVIP_INSTALL_PATH = /Library/PreferenceBundles
MomoSVIP_FRAMEWORKS = UIKit
MomoSVIP_PRIVATE_FRAMEWORKS = Preferences
MomoSVIP_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/MomoSVIP.plist$(ECHO_END)
