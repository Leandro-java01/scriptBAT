@echo off
for /f "usebackq tokens=1,2,3,4 delims=/ " %%i in (`echo %date%`) do (set dd=%%i) 	
for /f "usebackq tokens=1,2,3,4 delims=/ " %%i in (`echo %date%`) do (set mm=%%j)
for /f "usebackq tokens=1,2,3,4 delims=/ " %%i in (`echo %date%`) do (set yyyy=%%k)

echo %dd%%mm%%yyyy%
