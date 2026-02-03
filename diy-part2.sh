#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

sed -i 's/1.89.0/1.92.0/g' feeds/packages/lang/rust/Makefile
sed -i 's/0b9d55610d8270e06c44f459d1e2b7918a5e673809c592abed9b9c600e33d95a/ebee170bfe4c4dfc59521a101de651e5534f4dae889756a5c97ca9ea40d0c307/g' feeds/packages/lang/rust/Makefile