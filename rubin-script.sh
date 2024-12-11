#!/bin/bash

# 修改默认IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

./scripts/feeds update -a
rm -rf feeds/packages/kernel/fibocom-qmi-wwan/
./scripts/feeds install -a
