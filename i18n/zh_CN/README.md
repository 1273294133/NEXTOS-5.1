# NEXTOS 5.1 简体中文语言包

把 NEXTOS 5.1（Retro Elite，EmuELEC/EmulationStation 底子）的菜单汉化成简体中文。

- `emulationstation2.po`：完整翻译，**1264 条 msgid 全部有中文**（含前端自带的 36 种语言里的 zh_CN 原有 1105 条 + 本次补的 146 条 + 复数条目）。
- `.mo` 由 GitHub Actions 用 `msgfmt --check` 编译，不手工提交二进制。

## 为什么不用重编镜像

这套系统的 `/usr/share/locale` 是一个指向 `/storage/.config/emuelec/configs/locale` 的软链，
而 `/storage` 是卡上的可写分区。出厂时那个目录是软链回只读 SYSTEM 的，
只要把它换成一个真实目录并把语言文件放进去，前端启动时就会读到中文 `.mo`，SYSTEM 镜像一个字节都不用改。
（`system.language` 由 `launch-frontend.py` 从 `emuelec.conf` 读取，并导出 `LANGUAGE` 给 gettext。）

## 安装

```sh
# 在机器上（SSH，root）
sh install-zh_CN.sh
```

脚本做的事：

1. 把 `/storage/.config/emuelec/configs/locale` 从软链变成真实目录，并把 SYSTEM 里另外 35 种语言一起复制过来（不丢语言）；
2. 写入 `zh_CN/LC_MESSAGES/emulationstation2.{po,mo}`；
3. `emuelec.conf` 里 `system.language=zh_CN`；
4. 重启 `emustation`。

切回葡语：把 `system.language` 改成 `pt_BR` 再重启，中文文件留着不影响。

## 已知边界

- 首启向导的「IDIOMA」步骤仍只有 葡语/英语/西语 三项，中文是靠 `system.language` 生效的，装完后向导里选不到中文（但也不影响使用）。
- 少数硬编码在二进制里的字符串（如 `AJUSTES DE JOGO` 这类菜单标题，如果没进翻译表）不会被翻译。
- 字体：系统自带 `DroidSansFallbackFull.ttf`（EmulationStation 的 CJK 回退字体），中文能否正常显示取决于主题是否用到它；个别主题若只用自己的像素字体，可能出现缺字。
