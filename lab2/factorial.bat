@echo off
set /P n=Enter a non-negative integer: 
if %n% LSS 0 goto end
if %n% GTR 12 goto end
set /A fact=1
for /L %%i in (1,1,%n%) do set /A fact=fact*%%i
echo %fact%
:end
pause