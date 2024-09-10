#SingleInstance, Force
Menu, Tray, Icon, %A_ScriptDir%\Images\connect.ico

variance = 20
1
Numpad1::Reload
Numpad2::ExitApp

^j::

Run %A_ScriptDir%\TimerGem.ahk
	Sleep 1000
	SendInput {F3}
	Sleep 10
Run %A_ScriptDir%\GemFarm.ahk
	Sleep 1000
	SendInput {F7}

Loop
{
Sleep 50
ToolTip, RECONNECT MODE ACTIVATED ✅, 1650, 965,4
Sleep 50

Loop
{
	Sleep 1000
	ImageSearch Reconnectx, Reconnecty, 690, 390, 1110, 815, *%variance% %A_ScriptDir%\Images\Reconnect.png
	if (ErrorLevel = 0)
	{
		Sleep 1000
		MouseMove, %Reconnectx%, %Reconnecty%
		Sleep 200
		Tooltip, Reconnecting 😞
		Sleep 500
		Loop, 4
		{
		Sleep 200
		SendInput {F8}
		Sleep 200
		}
		MouseMove, % Reconnectx + 10, % Reconnecty + 1
		Sleep 10
		Tooltip, Reconnecting 😞
		Sleep 1000
		Loop, 4 {
		MouseClick, L,%Reconnectx%, %Reconnecty%
		Sleep 100
		MouseMove, % Reconnectx, % Recconecty
		Sleep 100
		MouseClick, L,% Reconnectx + 10, % Reconnecty + 1
		}
		ToolTip,
		break
	}
}
Run %A_ScriptDir%\GemFarm.ahk
Sleep 1000
SendInput {F7}
}


Return
