#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\Images\helmet.ico

#Include FindText.ahk

;POS
{
firstslot = 1
secondslot = 2
thirdslot = 3

firstx = 900
firsty = 450

secondx = 990
secondy = 485

thirdx = 1025
thirdy = 580


Towerunit1x = 150
Towerunit1y = 750

Towerunit2x = 160
Towerunit2y = 500

Towerunit3x = 440
Towerunit3y = 275

Towerunit4x = 650
Towerunit4y = 220

Towerunit5x = 1015
Towerunit5y = 225

Towerunit6x = 1225
Towerunit6y = 270

Towerunit7x = 1495
Towerunit7y = 490

Towerunit8x = 1495
Towerunit8y = 750


centerx = 848
centery = 520

mount = v
upgkey = t
cancelkey = q


wins = 0
}


/*
~l::
Loop{
MouseGetPos, mousex,mousey
ToolTip, X: %mousex% Y: %mousey%
sleep 50
}
return
*/






f9:: reload
f8:: exitapp


~k::
F7::
	ToolTip, IGROS FARM ACTIVATED, 1650, 1000,2
	ToolTip, WINS: %wins%, 1650, 905,6

	main:
spawn:
	MouseMove, % centerx, % centery, 5
	ToolTip, Waiting config,200,200

Loop {
Configimg:="|<>*131$25.zw7zzy3zzz1zzU00zU00DU003s003w1w1y1z0z1zkQ1zw00zy00Tz00DzU07zk71zkTUTkDk7k7s003s000y000zU00zvkSzzsDzzw7zk"
	if (ok:=FindText(configposx, configposy, 25-150000, 976-150000, 25+150000, 976+150000, 0, 0, Configimg))
	{
	goto, config
	}
}





	config:
Tooltip, Found, 200, 200
Sleep 500
MouseMove, % configposx, % configposy, 5
MouseClick, L, % configposx, % configposy
goto, respawn








	respawn:
Sleep 500
MouseMove, % centerx, % centery, 4
Tooltip, Waiting respawn,200,200

Sleep 200

Loop, 10 {
	Sleep 10
	Send {WheelDown}
	Sleep 10
	 	}



Loop {
Respawnimg:="|<>*129$240.zzzzzlzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz000zzUzzzzzzzzzzzzzw003zzzy1zzzzzzzzzzzz000zzUzzzzzzzzzzy7zs003zzzs0Tzzzzzzzzzzz000zzUzzzzzzzzzzy3zs003zzzk0Dzzzzzzzzzzz000zzUzzzzzzzzzzy3zw003zzzk0Dzzzzzzzzzzzz1zzzUzzzzzzzzzzy3zzw7zzzzUMTzzzzzzzzzzzzVzzzUzzzzzzzTzzy3zzy7zvzzUwzzzzzzzzzzzzzVzU7UzU7V1zk3sMM0Tzy7y0TzUzy47zVVVsyAA7zVz03Uz03U0TU1s000Dzy7w0DzUTy01y011kQ403zVy01Uy01U0D00s000Dzy7s07zk1y00w01UkQ401zVw01Uw01U0C00M0M0Dzy7k03zk0S00w01Uk8A00zVw3UUw3UU861UM6w2zzy7kA3zs0C0UM01UU8A00zVw7UUw7UUw63kMDy3zzy7kS3zz063kMD1k00A7UzVw00Uw00Uw63sMDy3zzy7kT3zzs63kMT1k00Q7UzVw01Uw01Uw63sMDy3zzy7kT3znw63kMD1s00Q7kzVw7zUw7zUM63kMDy3zzy7kS3zVw61UMC1s00w7kzVw7zUQ7zU0C00MDy3zzy7k03zUM600s01s20w7kzVy01UC01U0D00MDy0Tzy7s03zU0C00w01w30w7kzVy01UC01U0T00sDy0Tzy7s07zk0C01w01w71w7kzVz01kD01U0zU1sDz0Tzy7w0Dzs0S03y01y71w7kzVzk3sDk3Unzs7wTzkzzy7z0zzw1y3DzVXyDXyDkzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzUzzzzzzzzzzzzzzzzzzy3zzzzzzzzzzzzzzzzzzzVzzzzzzzzzzzzzzzzzzy7zzzzzzzzzzU"

	if (ok:=FindText(respawnposx, respawnposy, 641-150000, 403-150000, 641+150000, 403+150000, 0, 0, Respawnimg))
	{
	goto, respawntp
	}
}




	respawntp:
Tooltip, Found, 200, 200
Sleep 200
MouseMove, % respawnposx + 450, % respawnposy, 3
MouseClick, L, % respawnposx + 450, % respawnposy
Sleep 500
MouseMove, % configposx, % configposy, 3
MouseClick, L, % configposx, % configposy
goto, camera






	camera:
Tooltip, Ajusting Camera,200,200
MouseMove, %centerx%, %centery%, 2
Sleep 200
MouseClickDrag, R, %centerx%, %centery%, % centerx, % centery + 1, 50
Sleep 100

Loop, 20	{
	Send {Wheelup}
	Sleep 20
		}

Sleep 250

Loop, 10 	{
	Sleep 10
	Send {WheelDown}
	Sleep 10
		}
goto, walk





	walk:
Send {Ctrl}
Sleep 1000
Send {w down}
Sleep 2000
Send {w up}
Send {a down}
Sleep 500
Send {a up}
Send {w down}
Sleep 2500
Send {w up}
Sleep 200
Send {space down}
Send {w down}
Sleep 500
Send {space up}
Send {w up}
Send {d down}
Sleep 600
Send {d up}
Send {Right down}
Sleep 1475
Send {Right up}
Sleep 500
Send {%mount%}
Send {Ctrl}
Sleep 500
goto, farm






	farm:
Loop 		{

	start:
	Sleep 1000
Loop {
Yesimg:="|<>*111$34.rCw002Dkk000T3y1wVsDyTy31zzzw4C0w1s0k1U7U6060L0sQMTC3VUUDsQ070TVs0y0y7Vzb3sS060DVw0M1z7s3kC"

	if (ok:=FindText(yesposx, yesposy, 771-150000, 194-150000, 771+150000, 194+150000, 0, 0, Yesimg))
	{
	goto, yes
	}

}






	yes:
Tooltip, Found, 200, 200
sleep 500
MouseMove, % yesposx, %yesposy%, 4
MouseClick, L, % yesposx, %yesposy%
goto, units




	units:
	Tooltip, Playing,200,200
sleep 10000

	placethird:
Send {%thirdslot%}
Sleep 200
MouseMove, %thirdx%, %thirdy%, 4

Loop, 15 	{
	Send {%thirdslot%}
	MouseMove, % thirdx,% thirdy + 20, 4
	Sleep 250
	MouseClick, L, %thirdx%, %thirdy%
	Sleep 250
	MouseMove, %thirdx%,%thirdy%, 2
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 1000
MouseClick, L, %thirdx%, % thirdy - 3
goto, upgradethird



	placesecond:
sleep 10000

Send {%secondslot%}
Sleep 200
MouseMove, %secondx%, %secondy%, 4

Loop, 15 	{
	Send {%secondslot%}
	MouseMove, % second,% second + 20, 4
	Sleep 250
	MouseClick, L, %secondx%, %secondy%
	Sleep 250
	MouseMove, %secondx%,%secondy%, 2
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 1000
MouseClick, L, %secondx%, % secondy - 3
goto, upgradesecond



	placefirst:
sleep 10000

Send {%firstslot%}
Sleep 200
MouseMove, %firstx%, %firstv%, 4

Loop, 10 	{
	Send {%firstslot%}
	MouseMove, % firstx,% firsty + 20, 2
	Sleep 250
	MouseClick, L, %firstx%, %firsty%
	Sleep 250
	MouseMove, %firstx%,%firsty%, 2
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 1000
MouseClick, L, %firstx%, % firsty - 3
goto, upgradefirst





	upgradethird:
Loop, 20 	{
	Sleep 2000
	Send {%upgkey%}
	 	}
sleep 5000
goto, placesecond


	upgradesecond:
Loop, 20 	{
	Sleep 2000
	Send {%upgkey%}
	 	}
sleep 5000
goto, placefirst


	upgradefirst:
Loop, 25 	{
	Sleep 2000
	Send {%upgkey%}
	 	}
sleep 10000
goto, towerunits

	upgradefirstv2:
	Sleep 200
	MouseMove, % firstx, % firsty - 3, 4
	MouseClick,L, % first, % first - 3, 2
	Sleep 20000
Loop, 5 	{
	Sleep 4000
	Send {%upgkey%}
	 	}
sleep 1000
goto, final




	towerunits:
	MouseMove, % centerx, % centery + 100, 4
	MouseClick,L, % centerx,% centery + 100, 2
	Sleep 10000


	tunit1:
sleep 1500

Send {%firstslot%}
Sleep 200
MouseMove,% Towerunit1x,% Towerunit1y, 4

Loop, 3 	{
	Send {%firstslot%}
	MouseMove,% Towerunit1x,% Towerunit1y - 20, 2
	Sleep 250
	MouseMove, % Towerunit1x,% Towerunit1y, 2
	Sleep 250
	MouseClick, L, % Towerunit1x,% Towerunit1y
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2


	tunit2:
sleep 1500

Send {%secondslot%}
Sleep 200
MouseMove,% Towerunit2x,% Towerunit2y, 4

Loop, 3 	{
	Send {%secondslot%}
	MouseMove,% Towerunit2x,% Towerunit2y - 20, 2
	Sleep 250
	MouseMove, % Towerunit2x,% Towerunit2y, 2
	Sleep 250
	MouseClick, L, % Towerunit2x,% Towerunit2y
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2


	tunit3:
sleep 1500

Send {%firstslot%}
Sleep 200
MouseMove,% Towerunit3x,% Towerunit3y, 4

Loop, 3 	{
	Send {%firstslot%}
	MouseMove,% Towerunit3x,% Towerunit3y + 20, 2
	Sleep 250
	MouseMove, % Towerunit3x,% Towerunit3y, 2
	Sleep 250
	MouseClick, L, % Towerunit3x,% Towerunit3y
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2


	tunit4:
sleep 1500

Send {%secondslot%}
Sleep 200
MouseMove,% Towerunit4x,% Towerunit4y, 4

Loop, 3 	{
	Send {%secondslot%}
	MouseMove,% Towerunit4x,% Towerunit4y + 20, 2
	Sleep 250
	MouseMove, % Towerunit4x,% Towerunit4y, 2
	Sleep 250
	MouseClick, L, % Towerunit4x,% Towerunit4y
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2


	tunit5:
sleep 1500

Send {%secondslot%}
Sleep 200
MouseMove,% Towerunit5x,% Towerunit5y, 4

Loop, 3 	{
	Send {%secondslot%}
	MouseMove,% Towerunit5x,% Towerunit5y + 20, 2
	Sleep 250
	MouseMove, % Towerunit5x,% Towerunit5y, 2
	Sleep 250
	MouseClick, L, % Towerunit5x,% Towerunit5y
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2


	tunit6:
sleep 1500

Send {%firstslot%}
Sleep 200
MouseMove,% Towerunit6x,% Towerunit6y, 4

Loop, 3 	{
	Send {%firstslot%}
	MouseMove,% Towerunit6x,% Towerunit6y + 20, 2
	Sleep 250
	MouseMove, % Towerunit6x,% Towerunit6y, 2
	Sleep 250
	MouseClick, L, % Towerunit6x,% Towerunit6y
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2


	tunit7:
sleep 1500

Send {%thirdslot%}
Sleep 200
MouseMove,% Towerunit7x,% Towerunit7y, 4

Loop, 3 	{
	Send {%thirdslot%}
	MouseMove,% Towerunit7x,% Towerunit7y - 20, 2
	Sleep 250
	MouseMove, % Towerunit7x,% Towerunit7y, 2
	Sleep 250
	MouseClick, L, % Towerunit7x,% Towerunit7y
	Sleep 500
	 	}
Send {%upgkey%}
Sleep 200
Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2


	tunit8:
sleep 1500

Send {%firstslot%}
Sleep 200
MouseMove,% Towerunit8x,% Towerunit8y, 4

Loop, 3 	{
	Send {%firstslot%}
	MouseMove,% Towerunit8x,% Towerunit8y - 20, 2
	Sleep 250
	MouseMove, % Towerunit8x,% Towerunit8y, 2
	Sleep 250
	MouseClick, L, % Towerunit8x,% Towerunit8y
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 500
MouseMove, % centerx, % centery + 100, 4
MouseClick,L, % centerx,% centery + 100, 2
goto, upgradefirstv2






	final:
	ToolTip, Waiting the End,200,200
	MouseMove, % centerx + 500, % centery, 4
Loop,	200	 {
Sleep 2500
Endimg:="|<>*122$53.s1zzzzzzzU1zzzzzzy03zzzzzzsD7zzzzzzkzzUS8MT01zy0A00Q07UM0M00M0C0ksk00kwS1VlVVVU8T303333U0S60C667UE0ADwAACsk0M0MMMM1k1s0lkkk3k7s3XnlkA"

	if (ok:=FindText(endposx, endposy, 1019-150000, 422-150000, 1019+150000, 422+150000, 0, 0, Endimg))
	{
		wins++
		sleep 200
		ToolTip, WINS: %wins%, 1650, 905,6
		MouseMove, % centerx, % centery, 2
	goto, replay
	}
Sleep 2500
}






	clicking:
Tooltip, Clicking,200,200
MouseMove, %centerx%, %centery%, 4
MouseClick,L,% centerx, % centery
goto, replay









	replay:
ToolTip, Searching replay,200,200
Sleep 1000

Loop {
ReplayPointimg:="|<>*102$32.wzzznz1zzUzw3z0zDkzkT0yDwTW7zbzVkTtzUy3wDkTkC1kDw0003zU001zs000Ty0007zU001zsA0sTy70C7zVs7VzsS1sTy7UT7zVs7lzsS1wTw7UT3z1s7kzky1wDw7UT3zVs7lzwS1wzzbUTTzzs7zzzy1zzzzUDzzzs3zzzy1zzzzkzzzzzTzy"

	if (ok:=FindText(restartposx, restartposy, 840-150000, 167-150000, 840+150000, 167+150000, 0, 0, ReplayPointimg))
	{
		goto, restartgame
	}
	else
		goto, clicking
	}






	restartgame:
Sleep 1000
Tooltip, Restarting,200,200
MouseMove, % restartposx + 200, % restartposy + 615, 4
MouseClick,L,% restartposx + 200, % restartposy + 615
goto, start



}

return
