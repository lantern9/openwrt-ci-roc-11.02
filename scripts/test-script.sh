# 移除要替换的包
rm -rf feeds/packages/net/alist
rm -rf feeds/luci/applications/luci-app-alist

# Alist
git clone https://github.com/sbwml/luci-app-alist package/luci-app-alist
git clone https://github.com/lwb1978/openwrt-gecoosac package/openwrt-gecoosac

./scripts/feeds update -a
./scripts/feeds install -a
