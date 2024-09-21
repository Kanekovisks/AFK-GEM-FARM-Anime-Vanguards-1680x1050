#NoEnv
#SingleInstance, Force


#Include FindText.ahk


goto, waitingstart


CenterPos(byref Centerx,byref Centery,byref xydiff){ ;GET THE CENTER OF THE ROBLOX SCREEN

	if (WinExist("Roblox")){
	WinActivate
	WinMaximize
	WinGetPos, windowposx, windowposy, windowx, windowy, Roblox
	Centerx := % windowx // 2
	Centery := % windowy // 2
	xydiff := % windowx - windowy
	}
}



UnitPos(byref unitposx,byref unitposy,Centerx,Centery,xydiff){ ;TRY TO GET THE PLACE LOC BASE ON SCREEN PROPORTION (Is junky for now, idk how to do this well SORRY)
if (xydiff >= 350 && xydiff <= 690){
	 	unitposx := % Centerx * 1.14
	 	unitposy := % Centery * 1.34
}
else if (xydiff <= 350){
	 	unitposx := % Centerx * 1.17
	 	unitposy := % Centery * 1.4
}
else if (xydiff >= 690) {
		unitposx := % Centerx * 1.1
		unitposy := % Centery * 1.4
	}
}



Locator(Centerx,Centery){ ;LOCATE POS IN SCREEN
	Loop{
	MouseGetPos, pixx,pixy
	ToolTip, Center: X: %Centerx% Y: %Centery%`nX: %pixx% Y: %pixy%,200,100,2
	Sleep 10
	}
	return
	}



MousePlace(unitnum,unitposx,unitposy){ ;PLACE THE UNIT
	Send, {%unitnum%}
	Sleep 500
	MouseMove, unitposx, unitposy, 2
	MouseClick, L, unitposx, unitposy
	Send, {q}
}



waitLoad(Centerx,Centery){ ;WAIT FOR THE CONFIG IMG TO APPEAR IN SCREEN
MouseMove,  Centerx,  Centery, 5
Loop{
	Configimg:="|<>*131$25.zw7zzy3zzz1zzU00zU00DU003s003w1w1y1z0z1zkQ1zw00zy00Tz00DzU07zk71zkTUTkDk7k7s003s000y000zU00zvkSzzsDzzw7zk"
if (ok:=FindText(configposx, configposy, 25-150000, 976-150000, 25+150000, 976+150000, 0, 0, Configimg))
{
	Break
	}
	}
}


Respawn(Centerx,Centery){ ;MAKE THE CHARACTER RESPAWN AT THE BASIC LOCATION OF THE MAP
MouseMove, Centerx, Centery, 4
Sleep 250
Loop, 20 {
	Send {WheelDown}
	Sleep 50
	 	}
	SendRaw, \]
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Enter}
    SendRaw, \]
    Sleep, 10
    SendRaw, \]
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Enter}
    SendRaw, \]
    Sleep, 10
    SendRaw, \]
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Enter}
    Sleep, 10
    SendRaw, \]
}

CameraAjust(Centerx,Centery){
Sleep 500
MouseMove, % Centerx, % Centery,4
MouseClickDrag, R, % Centerx, % Centery, % Centerx, % Centery + 200, 4
Loop, 20{
	Sleep 20
	Send {WheelDown}
}
}

Yes(){ ; CLICK IN THE YES BUTTON TO START THE GAME
Loop {
	Yesimg:="|<>*111$34.rCw002Dkk000T3y1wVsDyTy31zzzw4C0w1s0k1U7U6060L0sQMTC3VUUDsQ070TVs0y0y7Vzb3sS060DVw0M1z7s3kC"
if (ok:=FindText(yesposx, yesposy, 771-150000, 194-150000, 771+150000, 194+150000, 0, 0, Yesimg))
{
    SendRaw, \]
    Send, {Left}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Enter}
    Sleep, 10
    SendRaw, \]
	break
}
	}
}


EndWait(Centerx,Centery){ ;WAIT TO THE END, USES THE GEM TEXT TO DETECT, AND IF NOTHING APPEAR TILL 4 HAS PASSED HE GONNA CLICK THE "RETRY" BUTTON CAN
	MouseMove, Centerx, Centery - 400, 2
	MouseClick,L, Centerx, Centery - 400, 2
Loop {
	Endimg:="|<>*122$53.s1zzzzzzzU1zzzzzzy03zzzzzzsD7zzzzzzkzzUS8MT01zy0A00Q07UM0M00M0C0ksk00kwS1VlVVVU8T303333U0S60C667UE0ADwAACsk0M0MMMM1k1s0lkkk3k7s3XnlkA"
if (ok:=FindText(endposx, endposy, 1019-150000, 422-150000, 1019+150000, 422+150000, 0, 0, Endimg))
	{
	MouseMove, Centerx, Centery, 2
	Break
	}
	}
}


Clicking(Centerx,Centery){ ; CLICK IN THE CENTER
MouseMove, % Centerx, % Centery, 4
MouseClick,L, % Centerx, % Centery
}


ReplayWait(ByRef ok){ ; WAIT THE IMG REPLAY TO APPEAR IN THE SCREEN
	ReplayPointimg:="|<>*102$32.wzzznz1zzUzw3z0zDkzkT0yDwTW7zbzVkTtzUy3wDkTkC1kDw0003zU001zs000Ty0007zU001zsA0sTy70C7zVs7VzsS1sTy7UT7zVs7lzsS1wTw7UT3z1s7kzky1wDw7UT3zVs7lzwS1wzzbUTTzzs7zzzy1zzzzUDzzzs3zzzy1zzzzkzzzzzTzy"
	ok:=FindText(restartposx, restartposy, 840-150000, 167-150000, 840+150000, 167+150000, 0, 0, ReplayPointimg)
}





wins = 0

	waitingstart:
CenterPos(Centerx,Centery,xydiff)

waitLoad(Centerx,Centery)

SendRaw, \]
Sleep, 100
Send, {Down}
Sleep, 10
Send, {Right}
Sleep, 10
Send, {Enter}
Sleep, 250
SendRaw, \]
Send, {w down}
Send, {a down}
Send, {Shift down}
Sleep, 4000
Send, {w up}
Send, {a up}
Send, {Shift up}
Sleep, 250
SendRaw, \]

Sleep 200

        Send, {Down}
        Sleep, 10
        Send, {Left}
        Sleep, 10
        Send, {Left}
        Sleep, 10
		Send, {Up}
		Sleep, 10
        Send, {Enter}
        Sleep, 10

		Sleep, 250

		Sleep, 10
		Send, {Down}
		Sleep, 10
		Send, {Enter}
		Sleep, 10
		SendRaw, \]

Sleep 1000

waitLoad(Centerx,Centery)
Respawn(Centerx,Centery)

Sleep 1000

CameraAjust(Centerx,Centery)




Loop {


	farm:
Tooltip, WINS: %wins%, 200, 200, 5
Sleep 2000

Yes()

sleep 12000

UnitPos(unitposx,unitposy,Centerx,Centery,xydiff)

Loop, 10{
	Sleep 1000
	MousePlace(2,unitposx,unitposy)
}

Loop, 25 	{
	Sleep 4000
	Sendraw, t
	 	}



sleep 5000




Loop, 10{
	Sleep 1000
	MousePlace(1,unitposx,unitposy / 1.2)
}

Sleep 1000

Send {r}
Sleep 100
Send {r}

Loop, 25 	{
	Sleep 6000
	Sendraw t
		}


Sleep 5000


EndWait(Centerx,Centery)
goto, replay

clickingreplay:
Sleep 500
Clicking(Centerx,Centery)

Sleep 500

replay:
ReplayWait(ok)
if(ok){
	Sleep 500
    SendRaw, \]
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Down}
    Sleep, 10
    Send, {Left}
    Sleep, 10
    Send, {Enter}
    Sleep, 10
    SendRaw, \]
	wins++
	Goto, farm
}
else
	goto, clickingreplay



}

return

l::Locator(Centerx,Centery)

F3:: exitapp
