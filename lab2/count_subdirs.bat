@echo off
set DIR=%1
for /f %%A in ('dir "%DIR%" /AD /S /B ^| find /c /v ""') do set COUNT=%%A
echo %COUNT%
pause