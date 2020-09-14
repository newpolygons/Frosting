ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Pref

Pref_FILES = FroRootListController.m
Pref_INSTALL_PATH = /Library/PreferenceBundles
Pref_FRAMEWORKS = UIKit
Pref_PRIVATE_FRAMEWORKS = Preferences
Pref_LIBRARIES = sparkcolourpicker Cozy
Pref_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Pref.plist$(ECHO_END)
