# 移除要替换的包
rm -rf feeds/packages/lang/golang
rm -rf feeds/luci/applications/alist
rm -rf feeds/luci/applications/luci-app-alist

# Alist
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
git clone https://github.com/sbwml/luci-app-alist package/alist

./scripts/feeds update -a
./scripts/feeds install -a
