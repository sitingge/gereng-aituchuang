@echo off
setlocal enabledelayedexpansion
chcp 936 >nul

set "folder=%~dp0"
pushd "%folder%"

for /f "delims=" %%F in ('dir /b /a-d 2^>nul') do (
    set "old=%%F"
    set "new=%%F"

    rem 把文件名里所有的“早上”替换成“早晨”
    set "new=!new:早上=早晨!"

    if not "!old!"=="!new!" (
        ren "!old!" "!new!" 2>nul
        if errorlevel 1 (
            echo 失败: !old! -^> !new!
        ) else (
            echo 成功: !old! -^> !new!
        )
    )
)

popd
echo 完成
pause