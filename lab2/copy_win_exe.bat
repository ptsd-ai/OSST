@echo off
set DEST=Z:\ossst\lab1\WinEx
mkdir "%DEST%"
xcopy C:\Windows\*.exe "%DEST%" /I /Y /S
pause