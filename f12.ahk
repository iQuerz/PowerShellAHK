#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

F12::
;You can change this to open any program you like. You'll need to update its path on line 22 as well as line 12 and 31
app = powershell.exe
IfWinExist, ahk_exe %app%
{
	WinGetActiveTitle, Title
	if (Title != "Windows Powershell")
		WinActivate, ahk_exe %app%
	else
	{
		Send {Alt Down}{Tab}{Alt Up}
		WinMinimize, ahk_exe %app%
	}
	return
}

;Add your program path here, you'll need to change the app variable on the line 7 as well as line 12 and 31
Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
return

; alt+f12 if I want to use regular f12
!F12::Send {F12}
return