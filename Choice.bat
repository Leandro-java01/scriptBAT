@echo off
:sim
cls
for /f "usebackq tokens=1,2,3,4 delims=/ " %%i in (`echo %date%`) do (set dd=%%i) 	
for /f "usebackq tokens=1,2,3,4 delims=/ " %%i in (`echo %date%`) do (set mm=%%j)
for /f "usebackq tokens=1,2,3,4 delims=/ " %%i in (`echo %date%`) do (set yyyy=%%k)
echo ----------------------------------------------------------
echo                          Entrada
copy /y C:\PASTADEORIGEM\ARQUIVODESEJADO*.* C:\PASTADEDESTINO\

echo ----------------------------------------------------------
echo                          REPETIR CONSULTA
choice /T 15 /D S /M "Novamente: Sim, Nao"
IF errorlevel=2 goto EOF
IF errorlevel=1 goto SIM
:EOF
