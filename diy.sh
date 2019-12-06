#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================

#back to old version
git reset --hard  db5d264ccfd7b8b2a1bf48b740027bd5d448a83f
#add another unblockneteasemusic with some changes
git clone https://github.com/myflavor/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
#add adbyby plus with some changes
rm -rf package/lean/luci-app-adbyby-plus
git clone https://github.com/myflavor/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
#change the default theme to material
sed -i '14s/bootstrap/material/' feeds/luci/collections/luci/Makefile
