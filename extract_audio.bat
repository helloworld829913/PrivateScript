@echo off
setlocal EnableDelayedExpansion

echo FFmpeg 音频提取工具
echo ===================

:input_file
set /p "base_filename=请输入视频文件名(不需要输入.mp4扩展名): "
set "video_file=%base_filename%.mp4"
if not exist "%video_file%" (
    echo 错误: 文件 %video_file% 不存在，请重新输入
    goto input_file
)

set /p "start_time=请输入开始时间 (格式 HH:MM:SS.xxx): "
set /p "end_time=请输入结束时间 (格式 HH:MM:SS.xxx): "

set /p "output_file=请输入输出文件名(直接回车则使用默认名称output.mp3): "
if "!output_file!"=="" set "output_file=output.mp3"
if not "!output_file:~-4!"==".mp3" set "output_file=!output_file!.mp3"

echo 输出文件名: %output_file%

echo.
echo 正在处理中，请稍候...
echo.

ffmpeg -i "%video_file%" -ss %start_time% -to %end_time% -vn -q:a 0 "%output_file%"

if %errorlevel% neq 0 (
    echo.
    echo 处理过程中出现错误
) else (
    echo.
    echo 处理完成!
    echo 输出文件: %output_file%
)

echo.
set /p "continue=是否继续提取另一个片段? (Y/N): "
if /i "%continue%"=="Y" goto input_file

echo 感谢使用!
pause
