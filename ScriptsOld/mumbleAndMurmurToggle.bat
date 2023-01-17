

@echo off
title mumbleAndMurmurToggle
cls
for /f %%A in (mumbleAndMurmurToggle.Dat) do set power=%%A
echo %power%
if "%power%"=="ECHO is on." (
set power=on
)else (
if "%power%"=="nope" (
echo Switching ON
taskkill /F /IM mumble.exe
taskkill /F /IM murmur.exe
set power=on
)else (
echo Switching OFF
start "" "C:\Program Files (x86)\Mumble\murmur.exe"
start "" "C:\Program Files (x86)\Mumble\mumble.exe"
set power=nope
)
)
(echo %power%)> mumbleAndMurmurToggle.Dat