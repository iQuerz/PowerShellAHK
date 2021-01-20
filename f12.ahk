#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
!F12::
app = powershell.exe
IfWinExist, ahk_exe %app%
{
	WinGet, State, MinMax, ahk_exe %app%
	if (State = -1)
		WinActivate, ahk_exe %app%
	else
	{
		WinMinimize, ahk_exe %app%
	}
	return
}
Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
return