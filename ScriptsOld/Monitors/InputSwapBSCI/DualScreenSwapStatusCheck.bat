ControlMyMonitor.exe /GetValue "\\.\DISPLAY3\Monitor0" 60
set /a display_3_value = %errorlevel%
ControlMyMonitor.exe /GetValue "\\.\DISPLAY2\Monitor0" 60
set /a display_2_value = %errorlevel%
ControlMyMonitor.exe /GetValue "\\.\DISPLAY2\Monitor0" 10
set /a brightness = %errorlevel%

if %display_3_value% == 3857 or %display_2_value% == 3857(
	ControlMyMonitor.exe /SetValue "\\.\DISPLAY3\Monitor0" 60 17
	ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 17
) else (
	ControlMyMonitor.exe /SetValue "\\.\DISPLAY3\Monitor0" 60 15
	ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 60 15
)

ControlMyMonitor.exe /SetValue "\\.\DISPLAY3\Monitor0" 10 %brightness%
ControlMyMonitor.exe /SetValue "\\.\DISPLAY2\Monitor0" 10 %brightness%