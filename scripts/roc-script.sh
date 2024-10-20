# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 移除要替换的包
rm -rf feeds/packages/net/alist
rm -rf feeds/luci/applications/luci-app-alist
rm -rf feeds/packages/net/adguardhome

# Alist
git clone https://github.com/sbwml/luci-app-alist package/luci-app-alist
git_sparse_clone main https://github.com/kenzok8/small-package adguardhome luci-app-adguardhome

./scripts/feeds update -a
./scripts/feeds install -a
