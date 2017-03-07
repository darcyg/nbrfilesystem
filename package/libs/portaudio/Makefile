#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pa_stable
PKG_VERSION:=v190600_20161030
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=@SF/portaudio
PKG_MD5SUM:=7f220406902af9dca009668e198cbd23
PKG_MAINTAINER:=

PKG_LICENSE:=GPLv2
PKG_LICENSE_FILES:=COPYING

PKG_FIXUP:=autoreconf

PKG_INSTALL:=1

include $(BUILD_DIR)/host-build.mk
include $(BUILD_DIR)/package.mk

TARGET_CFLAGS += $(FPIC)

define Package/portaudio
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+alsa-lib
  TITLE:=PortAudio Portable Real-Time Audio Library
  URL:=http://www.portaudio.com/
endef

TARGET_CFLAGS += $(FPIC)

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/pa_linux_alsa.h $(1)/usr/include/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/portaudio.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libportaudio.{la,a,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/portaudio-2.0.pc $(1)/usr/lib/pkgconfig/
endef

define Package/portaudio/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libportaudio.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,portaudio))
