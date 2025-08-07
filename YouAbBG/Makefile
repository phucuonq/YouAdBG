THEOS_DEVICE_PORT = 22
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouAdBG
YouAdBG_FILES = Tweak.xm
YouAdBG_FRAMEWORKS = UIKit
YouAdBG_PRIVATE_FRAMEWORKS = YouTubeHeader

include $(THEOS_MAKE_PATH)/tweak.mk