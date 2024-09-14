#SingleInstance, Force
Menu, Tray, Icon, %A_ScriptDir%\Images\connect.ico

variance = 20
ticks = 0




Numpad1::Reload
Numpad2::ExitApp






^j::



	active:
Loop	{

	if WinExist("Roblox")	{
		WinActivate
		goto, starter
				}

	}







	starter:
Run %A_ScriptDir%\TimerGem.ahk
Sleep 200
Run %A_ScriptDir%\GemFarm.ahk
Sleep 1000
	SendInput {F3}
	Sleep 100
	SendInput {F7}

ToolTip, RECONNECT MODE ACTIVATED ✅, 1650, 965,4
ToolTip, 🔄️RECONNECTS: %ticks%, 1650, 930,5








	reconnect:
	ToolTip,
Loop		{
	Sleep 1000
	ImageSearch Reconnectx, Reconnecty, 690, 390, 1110, 815, *%variance% %A_ScriptDir%\Images\Reconnect.png
	if (ErrorLevel = 0)
	{
		Sleep 1000
		goto, waiting
	}
		}






	waiting:
Tooltip, Need to Reconnect 😞,200,200
Sleep 1000
MouseMove, %Reconnectx%, %Reconnecty%,4


Loop, 4		{
	Sleep 200
	SendInput {F8}
	Sleep 200
		}

Tooltip, Reconnecting 😞,200,200

Loop, 2		{
	MouseMove, % Reconnectx, % Recconecty, 4	
	Sleep 100
	MouseClick, L,%Reconnectx%, %Reconnecty%, 3
		}

ticks++
Sleep 100
ToolTip, 🔄️RECONNECTS: %ticks%, 1650, 930,5


Run %A_ScriptDir%\GemFarm.ahk
Sleep 1000
SendInput {F7}
	
	goto, reconnect
		


Return
