#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
git clone https://github.com/myflavor/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
sed -i '14s/bootstrap/material/' feeds/luci/collections/luci/Makefile
