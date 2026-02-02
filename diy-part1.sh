#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i 's/10.0.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
sed -i 's/1.89.0/1.92.0/g' feeds/packages/lang/rust/Makefile
sed -i 's/0b9d55610d8270e06c44f459d1e2b7918a5e673809c592abed9b9c600e33d95a/ebee170bfe4c4dfc59521a101de651e5534f4dae889756a5c97ca9ea40d0c307/g' feeds/packages/lang/rust/Makefile
#sed -i 's/download-ci-llvm=true/download-ci-llvm=false/g' feeds/packages/lang/rust/Makefile
# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
