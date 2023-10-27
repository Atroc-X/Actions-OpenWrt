#!/bin/bash
#============================================================
# https://github.com/Atroc-0625/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: Atroc-0625
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname=Atroc-x86' package/lean/default-settings/files/zzz-default-settings

# 清除旧版argon主题并拉取最新版
#pushd package/lean
#rm -rf luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon luci-theme-argon
#popd

echo 'All right!'
