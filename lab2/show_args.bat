@echo off
set count=0
if "%1"=="" goto error
if not "%2"=="" set /A count+=1
if not "%3"=="" set /A count+=1
if not "%4"=="" set /A count+=1
if not "%5"=="" set /A count+=1
if not "%6"=="" set /A count+=1
if not "%7"=="" set /A count+=1
if not "%8"=="" set /A count+=1
if not "%9"=="" set /A count+=1
if not "%10"=="" set /A count+=1
if not "%11"=="" set /A count+=1
if %count% LSS 4 goto error
if %count% GTR 11 goto error
echo Arguments: %*
goto end
:error
echo Error: wrong number of arguments
:end
pause
