@echo off
set DIR=%1
set EXT=%2
for %%F in (%DIR%\*.%EXT%) do echo %%~nxF
pause