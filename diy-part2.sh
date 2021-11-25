#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.98.1/g' package/base-files/files/bin/config_generate
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git   package/luci-theme-argon
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome 
git clone https://github.com/rufengsuixing/luci-app-zerotier.git package/luci-app-zerotier
