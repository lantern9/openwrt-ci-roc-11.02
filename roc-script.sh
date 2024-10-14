# 移除要替换的包
rm -rf feeds/packages/net/alist
rm -rf feeds/luci/applications/luci-app-alist

# Alist
git clone https://github.com/sbwml/luci-app-alist/alist packages/net/alist
git clone https://github.com/sbwml/luci-app-alist/luci-app-alist /luci/applications/luci-app-alist

./scripts/feeds update -a
./scripts/feeds install -a
