THEOS_PLATFORM_SDK_ROOT = /Applications/Xcode.app/Contents/Developer
SDKVERSION = 7.1
TARGET_IPHONEOS_DEPLOYMENT_VERSION = 7.0
IPHONE_ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = CBLogger
CBLogger_FILES = Tweak.xm
CBLogger_FRAMEWORKS = UIKit CoreBluetooth

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"