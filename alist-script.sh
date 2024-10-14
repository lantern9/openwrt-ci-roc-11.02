# 移除要替换的包
rm -rf feeds/packages/net/alist
rm -rf feeds/luci/applications/luci-app-alist

# Alist
git clone --depth=1 https://github.com/sbwml/luci-app-alist package/luci-app-alist

./scripts/feeds update -a
./scripts/feeds install -a
