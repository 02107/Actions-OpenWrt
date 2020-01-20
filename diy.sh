#!/bin/bash
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
sed -i '14s/bootstrap/material/' feeds/luci/collections/luci/Makefile
sed -i 's/OpenWrt/G-DOCK/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/G-DOCK/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
