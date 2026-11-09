#!/bin/sh
# NEXTOS 5.1 / Retro Elite —— 简体中文语言包安装脚本
# 用法：把语言包解压到机器的任意目录（如 /storage/zh_CN），SSH 登录后执行：
#   sh /storage/zh_CN/install-zh_CN.sh
# 需要 root 权限（EmuELEC 的 SSH 默认就是 root）。
set -eu

PACK=$(cd "$(dirname "$0")" && pwd)
FACTORY=/usr/config/emuelec/configs/locale
USER_LOCALE=/storage/.config/emuelec/configs/locale
CONF=/storage/.config/emuelec/configs/emuelec.conf

if [ "$(id -u)" != 0 ]; then
    echo "错误：请用 root 运行（su - 或直接以 root 登录 SSH）" >&2
    exit 1
fi
if [ ! -f "$PACK/zh_CN/LC_MESSAGES/emulationstation2.mo" ]; then
    echo "错误：找不到 zh_CN/LC_MESSAGES/emulationstation2.mo，请先完整解压语言包" >&2
    exit 1
fi
if [ ! -d "$FACTORY" ]; then
    echo "错误：$FACTORY 不存在，这不是 NEXTOS 5.1 / Retro Elite 系统？" >&2
    exit 1
fi

# 1) /storage/.config/emuelec/configs/locale 必须是一个真实目录。
#    出厂时它是指向只读 SYSTEM 的软链，语言文件放不进去，所以先把整棵树复制到卡上。
if [ -L "$USER_LOCALE" ]; then
    echo "==> 把语言目录从只读 SYSTEM 复制到存储卡"
    rm -f "$USER_LOCALE"
fi
if [ ! -d "$USER_LOCALE" ]; then
    mkdir -p "$USER_LOCALE"
    # 保留原有的 36 种语言，避免切换后其它语言消失
    cp -a "$FACTORY"/. "$USER_LOCALE"/ 2>/dev/null || true
fi

# 2) 写入简体中文
echo "==> 安装 zh_CN 语言文件"
mkdir -p "$USER_LOCALE/zh_CN/LC_MESSAGES"
cp -f "$PACK/zh_CN/LC_MESSAGES/emulationstation2.mo" "$USER_LOCALE/zh_CN/LC_MESSAGES/emulationstation2.mo"
cp -f "$PACK/zh_CN/LC_MESSAGES/emulationstation2.po" "$USER_LOCALE/zh_CN/LC_MESSAGES/emulationstation2.po"
chmod 644 "$USER_LOCALE/zh_CN/LC_MESSAGES/emulationstation2.mo"

# /usr/share/locale 就是指向这个目录的软链，前端从那里取 .mo，
# 所以上面这一步不需要改动 SYSTEM 镜像。

# 3) 切换菜单语言
echo "==> 设置 system.language=zh_CN"
mkdir -p "$(dirname "$CONF")"
if [ -f "$CONF" ]; then
    if grep -q '^system\.language=' "$CONF"; then
        sed -i 's/^system\.language=.*/system.language=zh_CN/' "$CONF"
    else
        printf 'system.language=zh_CN\n' >> "$CONF"
    fi
else
    printf 'system.language=zh_CN\nsystem.timezone=Asia/Shanghai\n' > "$CONF"
fi

# 4) 重启前端让语言生效（菜单会闪一下）
echo "==> 重启菜单"
systemctl restart emustation 2>/dev/null || /usr/bin/emulationstation --restart 2>/dev/null || true

echo
echo "完成。菜单应在几秒后以简体中文重新出现。"
echo "想切回葡萄牙语：把 $CONF 里的 system.language 改成 pt_BR 再重启。"
