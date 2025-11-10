@echo off
set min=%1
set max=%1
shift
:loop
if "%1"=="" goto done
if %1 LSS %min% set min=%1
if %1 GTR %max% set max=%1
shift
goto loop
:done
echo Minimum: %min%
echo Maximum: %max%
pause
