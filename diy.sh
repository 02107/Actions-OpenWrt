#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
#add another unblockneteasemusic with some changes
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
#chmod -R +x package/luci-app-unblockneteasemusic
#add adbyby plus with some changes
#rm -rf package/lean/luci-app-adbyby-plus
#git clone https://github.com/myflavor/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
#chmod -R +x package/lean/luci-app-adbyby-plus
#back to old ssr plus version
#rm -rf package/lean/luci-app-ssr-plus
#git clone https://github.com/myflavor/luci-app-ssr-plus package/lean/luci-app-ssr-plus
#chmod -R +x package/lean/luci-app-ssr-plus
#change the default theme to material
sed -i '14s/bootstrap/material/' feeds/luci/collections/luci/Makefile
sed -i 's/OpenWrt/G-DOCK/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/G-DOCK/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
