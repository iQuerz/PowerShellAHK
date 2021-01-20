#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
!F12::
App = powershell.exe
IfWinExist, ahk_exe %App%
{
	WinGet, State, MinMax, ahk_exe %App%
	if (State = -1)
		WinActivate, ahk_exe %App%
	else
	{
		WinMinimize, ahk_exe %App%
	}
	return
}
Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
return