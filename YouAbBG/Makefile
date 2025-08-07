TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = YouTube

THEOS_PACKAGE_DIR_NAME = debs

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouAbBG

YouAbBG_FILES = Tweak.xm
YouAbBG_FRAMEWORKS = UIKit AVFoundation
YouAbBG_PRIVATE_FRAMEWORKS = MediaPlayer

include $(THEOS_MAKE_PATH)/tweak.mk