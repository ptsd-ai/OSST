@echo off
set DIR1=%1
set DIR2=%2
for %%F in (%DIR1%\*) do if exist "%DIR2%\%%~nxF" echo %%~nxF
pause