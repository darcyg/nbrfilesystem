#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=sqlite-autoconf
PKG_VERSION:=3170000
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.sqlite.org/download.html

PKG_MAINTAINER:=D. Richard Hipp  Wich <drh@hwaci.com>
PKG_LICENSE_FILES:=README

PKG_INSTALL:=1

include $(BUILD_DIR)/package.mk

TARGET_CFLAGS += $(FPIC)

define Package/sqlite
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libreadline +libncurses
  TITLE:= SQLite
  URL:=http://www.sqlite.org
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/sqlite3{,ext}.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/sqlite3 $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsqlite3.{a,la,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/sqlite3.pc $(1)/usr/lib/pkgconfig/
endef

define Package/sqlite/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/sqlite3 $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsqlite3.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sqlite))
