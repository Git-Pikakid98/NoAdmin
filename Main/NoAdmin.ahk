#Requires AutoHotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set FileVersion, 1.0.0.0
;@Ahk2Exe-Set ProductVersion, 1.0.0.0
;@Ahk2Exe-ConsoleApp

FileInstall "patch.bat", A_Temp "\patch.bat", 1

for n, param in A_Args  ; For each parameter:
{
    RunWait A_Temp "\patch.bat" " " A_Args[1]
}

FileDelete A_Temp "\patch.bat"