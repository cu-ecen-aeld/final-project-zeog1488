
##############################################################
#
# SECURITY-SYSTEM
#
##############################################################

SECURITY_SYSTEM_VERSION = 0168ce5dadf45a94679014452bff43c2f597f501
SECURITY_SYSTEM_SITE = git@github.com:zeog1488/final-project-source-zeog1488.git
SECURITY_SYSTEM_SITE_METHOD = git
SECURITY_SYSTEM_GIT_SUBMODULES = YES

define SECURITY_SYSTEM_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define SECURITY_SYSTEM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/securitySystem $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
