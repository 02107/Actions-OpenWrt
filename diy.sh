#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i '14s/bootstrap/argon/' feeds/luci/collections/luci/Makefile
