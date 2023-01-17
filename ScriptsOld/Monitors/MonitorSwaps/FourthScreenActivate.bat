


@echo off
setlocal

rem Get current value and update it
call :GetToggle
set /P "=+1" < nul >> "%~F0"
set /A "toggle%%=2"

if %toggle% equ 0 (
   MultiMonitorTool.exe /LoadConfig .\ThreeMonitors.cfg
) else (
   MultiMonitorTool.exe /LoadConfig .\FourMonitors.cfg
)

goto :EOF

:GetToggle
rem Be sure that next line does NOT end in CR+LF:
set /A toggle=0+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1