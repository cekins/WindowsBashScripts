


@echo off
setlocal

rem Get current value and update it
call :GetToggle
set /P "=+1" < nul >> "%~F0"
set /A "toggle%%=2"

if %toggle% equ 0 (
   ControlMyMonitor.exe /SetValue "\\.\DISPLAY3\Monitor0" 60 17
   ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 17
) else (
   ControlMyMonitor.exe /SetValue "\\.\DISPLAY3\Monitor0" 60 15
   ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 15
)

goto :EOF

:GetToggle
rem Be sure that next line does NOT end in CR+LF:
set /A toggle=0+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1+1