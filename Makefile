export THEOS=/var/theos

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AppsCracker
AppsCracker_FILES = Tweak.xm
AppsCracker_EXTRA_FRAMEWORKS += Cephei
AppsCracker_FRAMEWORKS = UIKit


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += appscrackerbundle
include $(THEOS_MAKE_PATH)/aggregate.mk
