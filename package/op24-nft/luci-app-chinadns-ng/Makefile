include $(TOPDIR)/rules.mk

PKG_LICENSE:=Apache-2.0

LUCI_TITLE:=LuCI support for chinadns-ng
LUCI_DEPENDS:=+chinadns-ng +wget-ssl

include $(TOPDIR)/feeds/luci/luci.mk

define Package/chinadns-ng/conffiles
/etc/config/chinadns-ng
/etc/chinadns-ng/chnroute.txt
/etc/chinadns-ng/chnroute6.txt
/etc/chinadns-ng/gfwlist.txt
/etc/chinadns-ng/chinalist.txt
/etc/chinadns-ng/whitelist.txt
/etc/chinadns-ng/blacklist.txt
endef

# call BuildPackage - OpenWrt buildroot signature
