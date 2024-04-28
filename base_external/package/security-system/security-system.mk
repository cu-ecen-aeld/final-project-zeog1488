
##############################################################
#
# SECURITY-SYSTEM
#
##############################################################

SECURITY_SYSTEM_VERSION = 2a4946a43fa48fb1121e462f88f78fbbda119f31
SECURITY_SYSTEM_SITE = git@github.com:zeog1488/final-project-source-zeog1488.git
SECURITY_SYSTEM_SITE_METHOD = git
SECURITY_SYSTEM_GIT_SUBMODULES = YES

define SECURITY_SYSTEM_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define SECURITY_SYSTEM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/securitySystem $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server/securitySystem-start-stop.sh $(TARGET_DIR)/etc/init.d/S101securitySystem
endef

$(eval $(generic-package))
