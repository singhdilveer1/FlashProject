@echo off
cd /d %~dp0
del /F "%~dp0flash.exe"
del /F "%~dp0flash_new.exe"
del /F "%~dp0flash_tmp.exe"
cls
xcopy /Y /H "%~dp0bin\flash.exe" "%~dp0">nul
xcopy /Y /H "%~dp0bin\flash_new.exe" "%~dp0">nul
start "" /i "%~dp0flash.exe" "%~1">nul
ren flash.exe flash_tmp.exe
ren flash_new.exe flash.exe
exit