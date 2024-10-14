# 移除要替换的包
rm -rf feeds/packages/net/alist

# Alist
git clone https://github.com/sbwml/luci-app-alist packages/net/alist

./scripts/feeds update -a
./scripts/feeds install -a
