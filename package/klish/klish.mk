#############################################################
#
# klish
#
#############################################################

KLISH_VERSION = 2.2.5
KLISH_SOURCE = klish-$(KLISH_VERSION).tar.xz
KLISH_SITE = http://libcode.org/attachments/download/45

KLISH_DEPENDENCIES = 
KLISH_CONF_OPTS = --disable-gpl --without-tcl

ifeq ($(BR2_PACKAGE_LIBROXML),y)
KLISH_DEPENDENCIES += libroxml
KLISH_CONF_OPTS += --with-libroxml
endif

ifeq ($(BR2_PACKAGE_LIBXML2),y)
KLISH_DEPENDENCIES += libxml2
KLISH_CONF_OPTS += --with-libxml2
endif

ifeq ($(BR2_PACKAGE_EXPAT),y)
KLISH_DEPENDENCIES += expat
KLISH_CONF_OPTS += --with-libexpat
endif

$(eval $(autotools-package))
