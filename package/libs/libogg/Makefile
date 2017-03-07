#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libogg
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/libogg
PKG_MD5SUM:=ba526cd8f4403a5d351a9efaa8608fbc
PKG_MAINTAINER:=

PKG_LICENSE:=GPLv2
PKG_LICENSE_FILES:=COPYING

PKG_FIXUP:=autoreconf

PKG_INSTALL:=1

include $(BUILD_DIR)/package.mk

TARGET_CFLAGS += $(FPIC)

define Package/libogg
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Ogg library
  URL:=http://www.xiph.org/
endef

TARGET_CFLAGS += $(FPIC)

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/ogg $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libogg.{la,a,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/ogg.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libogg/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libogg.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libogg))
