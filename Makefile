ARCHS = arm64 arm64e
TARGET = iphone:clang:13.5:13.0




INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Frosting

Frosting_FILES = Tweak.x
Frosting_CFLAGS = -fobjc-arc
Frosting_FRAMEWORKS = UIKit
Frosting_LIBRARIES = Cozy sparkcolourpicker
include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += pref
SUBPROJECTS += watchpoint
include $(THEOS_MAKE_PATH)/aggregate.mk
