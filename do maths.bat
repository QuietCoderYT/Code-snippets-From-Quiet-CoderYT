@echo off
TITLE Time to do maths
chcp 65001 > nul
color 04
@mode con cols=60 lines=17
echo.
echo   ████████ ██ ███    ███ ███████     ████████  ██████      
echo      ██    ██ ████  ████ ██             ██    ██    ██     
echo      ██    ██ ██ ████ ██ █████          ██    ██    ██     
echo      ██    ██ ██  ██  ██ ██             ██    ██    ██     
echo      ██    ██ ██      ██ ███████        ██     ██████      
echo.
echo.
echo   ██████   ██████      ███    ███  █████  ████████ ██   ██ 
echo   ██   ██ ██    ██     ████  ████ ██   ██    ██    ██   ██ 
echo   ██   ██ ██    ██     ██ ████ ██ ███████    ██    ███████ 
echo   ██   ██ ██    ██     ██  ██  ██ ██   ██    ██    ██   ██ 
echo   ██████   ██████      ██      ██ ██   ██    ██    ██   ██ 
echo.
call :speak "Do math now."
echo 1 - Do maths.
echo 2 - I don't want to.
choice /C 12 /CS /N /M "Enter choice:"
if %errorlevel%==1 goto 1
if %errorlevel%==2 goto 2

:2
cls
call :speak "you will do math anyway"
echo Never mind, you're doing maths anyway.
timeout 2 > nul
goto 1

:1
cls
set /a x=%random%%% 4 +1
if %x%==1 set i=+
if %x%==2 set i=-
if %x%==3 set i=*
if %x%==4 set i=/
set /a y=%random%%% 100 +1
set /a z=%random%%% 100 +1
set /a ans=%y%%i%%z%
call :speak "Solve this. And don't fricking use calculator!"
echo What is %y%%i%%z%
set /p input=Type Answer: 
if %input%==%ans% (
	echo.
	echo Nice.
)
if not %input%==%ans% (
	echo Wrong answer. shutting down PC in 30 seconds...
	echo Close this window to cancel the shutdown...
	timeout 30 > nul
	shutdown /s /t 0
)
pause

exit
:speak
if exist speech.vbs del speech.vbs
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speech.Vbs"
set text=%1
echo speech.speak %text%>>"speech.vbs"
start speech.vbs
exit /b





