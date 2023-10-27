#!/bin/bash
#=============================================================
# https://github.com/Atroc-0625/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: Atroc-0625
#=============================================================

# Uncomment a feed source
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
