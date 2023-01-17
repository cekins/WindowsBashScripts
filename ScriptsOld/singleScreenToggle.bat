@echo off
title singleScreenToggle
cls
for /f %%A in (singleScreenToggle.Dat) do set power=%%A
echo %power%
if "%power%"=="ECHO is on." (
set power=on
)else (
if "%power%"=="nope" (
echo Switching ON
DisplaySwitch.exe /extend
set power=on
)else (
echo Switching OFF
DisplaySwitch.exe /internal
set power=nope
)
)
(echo %power%)> singleScreenToggle.Dat