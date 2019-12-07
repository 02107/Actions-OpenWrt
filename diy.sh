#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
#add another unblockneteasemusic with some changes
git clone https://github.com/myflavor/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
chmod -R +x package/luci-app-unblockneteasemusic
#add adbyby plus with some changes
rm -rf package/lean/luci-app-adbyby-plus
git clone https://github.com/myflavor/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
rm -rf package/lean/luci-app-ssr-plus
git clone https://github.com/myflavor/luci-app-ssr-plus package/lean/luci-app-ssr-plus
chmod -R +x package/lean/luci-app-adbyby-plus
#change the default theme to material
sed -i '14s/bootstrap/material/' feeds/luci/collections/luci/Makefile
