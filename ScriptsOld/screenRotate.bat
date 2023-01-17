@echo off
title screenRotate
cls
for /f %%A in (screenRotate.Dat) do set power=%%A
echo %power%
if "%power%"=="ECHO is on." (
set power=on
)else (
if "%power%"=="nope" (
echo Switching ON
X:\"Program Executables\display64.exe" /rotate:0
set power=on
)else (
echo Switching OFF
X:\"Program Executables\display64.exe" /rotate:270
set power=nope
)
)
(echo %power%)> screenRotate.Dat