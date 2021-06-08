echo off
setlocal enabledelayedexpansion

REM script will (remove s1, rename s2 to s3) from each file except 'pdfcroprename.bat'
REM define your own pattern as variable=!%variable%=! for remove str, variable=!variable:%str%=%repl%!

set "s1=.pid"
set "s2=" 
set "s3=_"

echo ":script begin:"
for %%i in (*) do (
    if %%i neq pdfcroprename.bat (
    pdfcrop %%i %%i
    set "oldname=%%i"
    set "oldname=!oldname:%s1%=!"
    set "oldname=!oldname:%s2%=%s3%!"
    ren %%i !oldname!)
)
echo ":script end:"