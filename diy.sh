#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
git reset --hard  db5d264ccfd7b8b2a1bf48b740027bd5d448a83f
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
sed -i '14s/bootstrap/material/' feeds/luci/collections/luci/Makefile
