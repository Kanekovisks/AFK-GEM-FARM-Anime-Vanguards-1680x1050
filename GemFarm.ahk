#SingleInstance, Force
Menu, Tray, Icon, %A_ScriptDir%\Images\diamante.ico

wins = 0



;POS
{
yesx = 700
yesy = 145
;865 250

restartx = 930
restarty = 745
restartx2 = 1155
restarty2 = 830

endx = 710 ;+ 360
endy = 385 ;+ 280
;965 640

centerx = 848
centery = 520

configx = 0 ;+50
configy = 950 ;+50
;65 1000

respawnx = 520 ;+350
respawny = 380 ;+80
;800 435
;teleport button = 1080 410

lobbyplayx = 100 ;+120
lobbyplayy = 370 ;+110
;220 495

selectx = 200
selecty = 170
selectx2 = 1550
selecty2 = 900


variance = 100
variance2 = 130
}

;UNITS
{

firstslot = 1
firstx = 955
firsty = 560

secondslot = 2
secondx = 955
secondy = 690


upgkey = t
cancelkey = q
zoomout = o

;placex = 615
;placey = 260
;placex2 = 1095
;placey2 = 835
;varianceplace = 20
}

;COORDS PICKER
{
~numpad6::
loop,
{
MouseGetPos, xpos, ypos
tooltip, X:%xpos% Y:%ypos%, 200, 200
sleep 100
}
return
}

f9:: reload
f8:: exitapp


$NumpadDot::
F7::
	ToolTip, GEM FARM ACTIVATED 💎, 1650, 1000,2
	ToolTip, 💎WINS: %wins%, 1650, 905,6
	
	main:
Loop		 {
	Tooltip, Waiting Lobby 🕹️
	Sleep 10
	ImageSearch, lobbyplayposx, lobbyplayposy, %lobbyplayx% , %lobbyplayy%, % lobbyplayx + 200, % lobbyplayy + 300, *%variance% %A_ScriptDir%\Images\lobbyplay.png

	if (Errorlevel = 0) {
	goto, lobbyplay
	}

	if (Errorlevel = 1) 	 {
		ImageSearch, lobbyplayposx, lobbyplayposy, %lobbyplayx% , %lobbyplayy%, % lobbyplayx + 120, % lobbyplayy + 110, *%variance% %A_ScriptDir%\Images\lobbyplay2.png

	if (Errorlevel = 0) {
		Sleep 500
	goto, lobbyplay
	}

	if (Errorlevel = 1) 	{
	goto, main
	}

				}
		}





	lobbyplay:
Sleep 5000
MouseMove, % lobbyplayposx, % lobbyplayposy, 4
Sleep 250
MouseClick, L, % lobbyplayposx, % lobbyplayposy
goto, walk








	walk:
Sleep 1000
Tooltip, Ajusting Camera 📷,200,200
sleep 200
MouseMove, %centerx%, %centery%, 4
sleep 200
MouseClickDrag, R, %centerx%, %centery%, %centerx%, % centery + 200, 1
Loop, 20	{
	Send {Wheelup}
		}

Sleep 250

Loop, 10 	{
	Send {WheelDown}
		}

Tooltip, Walking 🚶‍➡, 200, 200

Send {w down}
Send {d down}
Send {Shift down}
Sleep 1500
Send {w up}
Send {d up}
Send {Shift up}
Sleep 1000

goto, select







	select:
	level:
Loop		{
	Tooltip, Choosing level 🕹️, 200, 200
	Sleep 10
	ImageSearch, levelposx, levelposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\namek.png
	
	if (Errorlevel = 0) {
	goto, level2
	}

	if (Errorlevel = 1) 	{
		Sleep 10
		ImageSearch, levelposx, levelposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\namek2.png
		
	if (Errorlevel = 0) {
	goto, level2
	}

	if (Errorlevel = 1) {
	goto, level
	}

				}

		}









	act:
Loop 		{
	ToolTip, Choosing Act 📖, 200, 200
	Sleep 10
	ImageSearch, actposx, actposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\act1.png
	
	if (Errorlevel = 0) {
	goto, act2
	}

	if (Errorlevel = 1) 	{
		Sleep 10
		ImageSearch, actposx, actposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\act1_2.png
	
	if (Errorlevel = 0) {
	goto, act2
	}

	if (Errorlevel = 1) 	{
	goto, level
	}
				}

		}










	difficult:
	Sleep 500
Loop 		{
	ToolTip, Changing difficult ☠️, 200, 200
	Sleep 10
	ImageSearch, difficultposx, difficultposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\normal.png
	
	if (Errorlevel = 0) {
	goto, difficult2
	}

	if (Errorlevel = 1)	 {
		Sleep 10
		ImageSearch, difficultposx, difficultposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\normal2.png
	
	if (Errorlevel = 0) {
	goto, difficult2
	}

	if (Errorlevel = 1) 	{
	goto, level
	}
				}

		}










	confirm:
Loop 		{
	ToolTip, Confirming ✅, 200, 200
	Sleep 10
	ImageSearch, confirmposx, confirmposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\confirm.png
	if (Errorlevel = 0) {
	goto, confirm2
	}

	if (Errorlevel = 1) {
		Sleep 10
		ImageSearch, confirmposx, confirmposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\confirm2.png
	
	if (Errorlevel = 0) {
	goto, confirm2
	}

	if (Errorlevel = 1) {
	goto, level
				 }
				 }
		 }





	startlevel:
Loop, 100	 {
	ToolTip, Starting ✅, 200, 200
	Sleep 10
	ImageSearch, startposx, startposy, % selectx , % selecty , % selectx2, % selecty2 , *%variance% %A_ScriptDir%\Images\start.png
	
	if (Errorlevel = 0) {
	goto, startlevel2
	}

	if (Errorlevel = 1) {
		Sleep 10
		ImageSearch, startposx, startposy, % selectx , % selecty , % selectx2, % selecty2 , *%variance% %A_ScriptDir%\Images\start2.png
	
	if (Errorlevel = 0) {
	goto, startlevel2
	}

	if (Errorlevel = 1) {
		Sleep 10
		ImageSearch, startposx, startposy, % selectx , % selecty , % selectx2, % selecty2 , *%variance% %A_ScriptDir%\Images\start3.png
	
	if (Errorlevel = 0) {
	goto, startlevel2
	}

				 }
				 }

		 }
	goto, main






	level2:
MouseMove, % levelposx, % levelposy, 4
Sleep 250
MouseClick, L, % levelposx, % levelposy
	goto, act



	act2:
MouseMove, % actposx, % actposy, 4
Sleep 250
MouseClick, L, % actposx, % actposy
	goto, difficult



	difficult2:
MouseMove, % difficultposx, % difficultposy, 4
Sleep 250
MouseClick, L, % difficultposx, % difficultposy
	goto, confirm



	confirm2:
MouseMove, % confirmposx, % confirmposy, 4
Sleep 250
MouseClick, L, % confirmposx, % confirmposy
	goto, startlevel



	startlevel2:
MouseMove, % startposx, % startposy, 4
Sleep 500
MouseClick, L, % startposx, % startposy
	goto, loading





	loading:
MouseMove, % centerx, % centery, 2
Sleep 200
Tooltip, Loading ⏳
Sleep 10000
goto, spawn







	spawn:
Loop		 {
		ToolTip, Waiting config ⚙️
		Sleep 10
		ImageSearch, configposx, configposy, %configx% , %configy%, % configx + 70, % configy + 50, *%variance% %A_ScriptDir%\Images\config.png
	
	if (Errorlevel = 0) {
	goto, config
	}

	if (Errorlevel = 1) {
		Sleep 10
		ImageSearch, configposx, configposy, %configx% , %configy%, % configx + 70, % configy + 50, *%variance% %A_ScriptDir%\Images\config2.png

	if (Errorlevel = 0) {
	goto, config
	}

	if (Errorlevel = 1) {
	goto, spawn
				 }
				 }

		 }




	config:
Tooltip, Found
Sleep 500

MouseMove, % configposx, % configposy, 4
	Sleep 250
MouseClick, L, % configposx, % configposy
goto, respawn








	respawn:
Sleep 500
MouseMove, % centerx, % centery, 4
Sleep 10
Tooltip, Waiting respawn 🚼

	Loop, 4 {
	Sleep 10
	Send {WheelDown}
	Sleep 10
	 	}

Sleep 200

Loop 		{
	Sleep 10
	ImageSearch, respawnposx, respawnposy, %respawnx% , %respawny%, % respawnx + 350, % respawny + 80, *%variance% %A_ScriptDir%\Images\respawn.png
	
	if (Errorlevel = 0) {
		MouseMove, % respawnposx + 560, % respawnposy + 5, 4
		Sleep 250
		Tooltip, Found
		Sleep 250
		MouseClick, L, % respawnposx + 560, % respawnposy + 5
		Sleep 500
		MouseMove, % configposx, % configposy, 4
		Sleep 250
		MouseClick, L, % configposx, % configposy
	goto, camera

	}

		}









	camera:
Tooltip, Ajusting Camera 📷,200,200
sleep 200
MouseMove, %centerx%, %centery%, 4
sleep 200
MouseClickDrag, R, %centerx%, %centery%, %centerx%, % centery + 200, 1
Loop, 20	{
	Send {Wheelup}
		}

Sleep 250

Loop, 10 	{
	Send {WheelDown}
		}
goto, farm








	farm:
Loop 		{

	start:
Loop		{

	ToolTip, Searching start ➡️,200,200
	Sleep 10
	ImageSearch, yesposx, yesposy, %yesx% , %yesy%, % yesx + 100, % yesy + 200, *%variance% %A_ScriptDir%\Images\yes.png

	if (ErrorLevel = 0) {
	goto, yes
	}

	if (Errorlevel = 1) {
	goto, restartgame
	}
		}





	yes:
ToolTip, Found
sleep 500
MouseMove, % yesposx + 10, %yesposy%, 4
sleep 250
MouseClick, L, % yesposx + 10, %yesposy%
sleep 100
ToolTip,
goto, units






	units:
	placesecond:

	Tooltip, Playing 🕹️,200,200

sleep 10000

Send {%secondslot%}
Sleep 1000
MouseMove, %secondx%, %secondy%, 4

Loop, 20 	{
	Send {%secondslot%}
	Sleep 500
	MouseMove, %secondx%,%secondy%
	sleep 200
	MouseClick, L, %secondx%, %secondy%
	 	}

Send {%cancelkey%}
Sleep 1000
goto, upgradesecond






	upgradesecond:
Loop, 40 	{
	Sleep 2000
	Send {%upgkey%}
	Sleep 2000
	 	}



sleep 5000





	placefirst:
Send {%firstslot%}
Sleep 1000
MouseMove, % firstx ,% firsty

Loop, 15 	{
	Send {%firstslot%}
	Sleep 500
	MouseMove, % firstx ,% firsty, 4
	sleep 200
	MouseClick, L, % firstx ,% firsty
	 	}

Send {%cancelkey%}
Sleep 1000
goto, upgradefirst





	upgradefirst:
Sleep 200
Send {r}
sleep 100
Send {r}
sleep 100

Loop, 17 	{
	Sleep 3000
	Send {%upgkey%}
	Sleep 3000
		}
sleep 1000
goto, final







	final:
Loop		 {

	ToolTip, Waiting the End 🎯,200,200
	Sleep 100
	MouseMove, % centerx + 500 , % centery, 4
	Sleep 100
	ImageSearch, endposx, endposy, %endx%, %endy%, % endx + 360, % endy + 280, *%variance% %A_ScriptDir%\Images\gem3.png
	if (Errorlevel = 0) {
		wins++
		sleep 200
		ToolTip, 💎WINS: %wins%, 1650, 905,6
		MouseMove, % centerx, % centery, 4
	goto, replay
	}
	
		 }






	clicking:
Tooltip, Clicking 🖱️,200,200
MouseMove, %centerx%, %centery%, 2
Sleep 250
MouseClick,L,% centerx, % centery
goto, replay









	replay:
ToolTip, Searching replay 🔄️,200,200
Sleep 500

Loop 		 {
		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\replay.png
	
	if (Errorlevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1)	{

		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\replay2.png
	
	if (ErrorLevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1) 		{

		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\replay3.png
	
	if (ErrorLevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1)			{

		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\replay4.png

	if (ErrorLevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1)				{

		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\retry.png

	if (ErrorLevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1)					{

		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\retry2.png

	if (ErrorLevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1)						{

		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\universalreplay.png

	if (ErrorLevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1)							{

		Sleep 10
		ImageSearch, restartposx, restartposy, %restartx%, %restarty%, %restartx2%, %restarty2%, *%variance% %A_ScriptDir%\Images\universalreplay2.png

	if (ErrorLevel = 0)	{
	goto, restartgame
	}

		if (Errorlevel = 1) {
		goto, clicking
		}

											}
										}
									}
								}
							}
						}
					}

		 }






	restartgame:
Tooltip, Restarting 🔄️,200,200
sleep 250
MouseMove, % restartposx + 20, % restartposy + 20, 4
sleep 250
MouseClick,L,% restartposx + 20, % restartposy + 20
goto, start



}

return
