#
# Copyright (C) 2006-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=SDL2_mixer
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_MD5SUM:=c6c4f556d4415871f526248f5c9a627d
PKG_MAINTAINER:=

PKG_LICENSE:=GPLv2.1

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1

include $(BUILD_DIR)/host-build.mk
include $(BUILD_DIR)/package.mk

define Package/SDL2_mixer
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+SDL2 +libmad +libvorbis +libogg +alsa-lib
  TITLE:=SDL_mixer 2.0
  URL:=http://www.libsdl.org/projects/SDL_mixer/
endef

TARGET_CFLAGS += $(FPIC)

define Build/Configure
	(cd $(PKG_BUILD_DIR); \
		$(TARGET_CONFIGURE_OPTS) \
		./configure \
        --host=arm-openwrt-linux \
        --prefix=/usr \
		--enable-shared \
		--enable-static \
        --enable-music-mp3-mad-gpl \
	);
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/SDL2 $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libSDL2_mixer.{a,la,so} $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libSDL2_mixer-2.0.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/SDL2_mixer.pc $(1)/usr/lib/pkgconfig/
endef

define Package/SDL2_mixer/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libSDL2_mixer{,-2.0}.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,SDL2_mixer))