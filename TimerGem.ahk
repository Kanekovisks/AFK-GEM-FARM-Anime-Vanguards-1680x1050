#SingleInstance, Force


Menu, Tray, Icon, %A_ScriptDir%\Images\timer.ico

sec = 00
min = 00
hor = 00
SetTimer, num, 10
return
num:
ToolTip, %hor% : %min% : %sec%, 1600, 150,3
return
F3::
sec++
loop {
	Sleep 1000
	sec++
		if (sec = 60)
		{
		min++
		sec = 00
		}
		if (min = 60)
		{
		hor++
		min = 00
		}
    }
	sec = 00
	min = 00
	hor = 00
return


Numpad4::ExitApp
F6::ExitApp
Numpad5::Reload


