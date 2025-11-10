@echo off
setlocal enabledelayedexpansion
set /A min=0
set /A max=0
set first=1
:input
set /P num=Enter number (- to finish): 
if "%num%"=="-" goto done
echo %num% | findstr /R "^[0-9][0-9]*$" >nul
if errorlevel 1 goto input
if !first! equ 1 (
    set /A min=num
    set /A max=num
    set first=0
) else (
    if %num% LSS !min! set /A min=num
    if %num% GTR !max! set /A max=num
)
goto input
:done
echo Minimum: !min!
echo Maximum: !max!
pause