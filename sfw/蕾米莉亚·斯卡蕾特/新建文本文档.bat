@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo 正在将“斯卡雷特”替换为“斯卡蕾特”...
for /r %%i in (*斯卡雷特*) do (
    set "oldname=%%~nxi"
    set "newname=!oldname:斯卡雷特=斯卡蕾特!"
    if not "!oldname!"=="!newname!" (
        ren "%%i" "!newname!"
        echo 已重命名：%%~nxi → !newname!
    )
)
echo 完成！
pause