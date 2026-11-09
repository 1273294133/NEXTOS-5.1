#!/bin/sh
# NEXTOS 5.1 简体中文语言包 —— 在线一键安装
# 机器上直接执行（root）：
#   curl -fsSL https://raw.githubusercontent.com/1273294133/NEXTOS-5.1/main/i18n/install-online.sh | sh
# 没有 curl 时：
#   python3 -c "import urllib.request,os;exec(urllib.request.urlopen('https://raw.githubusercontent.com/1273294133/NEXTOS-5.1/main/i18n/install-online.sh').read())"
set -eu

URL=https://github.com/1273294133/NEXTOS-5.1/releases/download/zh_CN-locale/nextos-5.1-zh_CN-locale.zip
TMP=/storage/.cache/nextos-zh-install

if [ "$(id -u)" != 0 ]; then
    echo "错误：请用 root 运行" >&2
    exit 1
fi

echo "==> 下载语言包"
rm -rf "$TMP"
mkdir -p "$TMP"

# 系统自带 python3（3.15），不依赖 curl/unzip 是否存在
python3 - "$URL" "$TMP" <<'PY'
import os, sys, urllib.request, zipfile
url, dst = sys.argv[1], sys.argv[2]
pkg = os.path.join(dst, 'locale.zip')
req = urllib.request.Request(url, headers={'User-Agent': 'nextos-zh-installer'})
with urllib.request.urlopen(req, timeout=120) as r, open(pkg, 'wb') as f:
    f.write(r.read())
zipfile.ZipFile(pkg).extractall(dst)
print('  解压完成', dst)
PY

echo "==> 执行安装脚本"
sh "$TMP/install-zh_CN.sh"
