#Requires AutoHotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set FileVersion, 1.0.1.0
;@Ahk2Exe-Set ProductVersion, 1.0.1.0
;@Ahk2Exe-Set CompanyName, Pikakid98

if A_Args.Length < 1
{
    ExitApp
}

FileAppend "
(
    cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start /wait "" "%~1"
)"
, A_Temp "\patch.bat"

for n, param in A_Args  ; For each parameter:
{
    RunWait A_Temp "\patch.bat" " " '"' A_Args[1] '"', , "Hide"
}

FileDelete A_Temp "\patch.bat"