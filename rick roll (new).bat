@echo off

@mode con cols=50 lines=3

:close_explorer
taskkill /f /im "explorer.exe" >nul

echo Never Gonna Give You UP! Never Gonna Let You Down!

:play audio
if exist speech.Vbs del speech.Vbs
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speech.Vbs"
set "text=Never gonna give you up, never gonna let you down."
echo speech.speak "%text%" >> "speech.vbs"
start speech.vbs
timeout 5 >nul
del speech.Vbs

:backToNormal
start explorer.exe

del speech.Vbs
exit