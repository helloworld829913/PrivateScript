@echo off
setlocal enabledelayedexpansion

:: 设置你的代理地址和端口
set PROXY_IP=172.20.10.1
set PROXY_PORT=1082

:: 检查当前代理设置状态
git config --global --get http.proxy > nul 2>&1
if %errorlevel% equ 0 (
    echo 正在关闭 Git 代理设置...
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    echo Git 代理已关闭。
) else (
    echo 正在设置 Git 代理...
    git config --global http.proxy !PROXY_IP!:!PROXY_PORT!
    git config --global https.proxy !PROXY_IP!:!PROXY_PORT!
    echo Git 代理已设置为 !PROXY_IP!:!PROXY_PORT!
)

echo.
echo 当前代理设置:
echo HTTP  代理: 
git config --global --get http.proxy
echo HTTPS 代理: 
git config --global --get https.proxy

pause
