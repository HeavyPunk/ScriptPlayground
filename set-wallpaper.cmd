set currDir=%cd%
set pic=skeleton.png
set picUri=https://github.com/HeavyPunk/ScriptPlayground/raw/main/skeleton.png

curl -L %picUri% --output %pic%


reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %currDir%\%pic% /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
