#SingleInstance, Force
SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\Images\diamante.ico

#Include FindText.ahk



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



firstslot = 1
firstx = 955
firsty = 560

secondslot = 2
secondx = 955
secondy = 690


upgkey = t
cancelkey = q


variance = 100
variance2 = 130

wins = 0
}



f9:: reload
f8:: exitapp





~k::
F7::
	ToolTip, GEM FARM ACTIVATED, 1650, 1000,2
	ToolTip, WINS: %wins%, 1650, 905,6

	main:
	Tooltip, Waiting Lobby,200,200


Loop {
Playimg:="|<>*128$58.zzzXzzzzzz0Tw7zzzzzk0DkTzzzzz00D1zzzzzw00Q7zzzzzk01kTzzzzz1s31zzzzzw7sA7z777wETUkTk0MTk1y31y00Uy07kA7k023s000kS008700071s60kA400w7Uw3UUE07kS3kC0300z1sD0w0A7zw7UQ3k1kTzk600DU71zz0A00z0Q7zy0s03w3kTzs3k0TkDXzzkTVVz1zzzzzzzzs7zzzzzzzzUzzzzzzzzy3zzzzzzzzkTzzzzzzzz1zzzzzzzzwDzzzzzzzzxzs"

if (ok:=FindText(lobbyplayposx, lobbyplayposy, 162-150000, 469-150000, 162+150000, 469+150000, 0, 0, Playimg))
{
  goto, lobbyplay
}
}




	lobbyplay:
Sleep 2000
MouseMove, % lobbyplayposx, % lobbyplayposy, 6
MouseClick, L, % lobbyplayposx, % lobbyplayposy
goto, walk








	walk:
Sleep 3000
Tooltip, Ajusting Camera,200,200
MouseMove, %centerx%, %centery%, 2
MouseClickDrag, R, %centerx%, %centery%, %centerx%, % centery + 200, 4
Loop, 20	{
	Sleep 10
	Send {Wheelup}
	Sleep 10
		}

Sleep 250

Loop, 10 	{
	Sleep 10
	Send {WheelDown}
	Sleep 10
		}

Sleep 500

Tooltip, Walking, 200, 200

Send {w down}
Send {d down}
Send {Shift down}
Sleep 2000
Send {w up}
Send {d up}
Send {Shift up}
Sleep 1000

goto, select






	select:
	level:
	Tooltip, Choosing level, 200, 200
Loop {
Namakimg:="|<>*78$192.zzznk00000000Tk0zsDy000000000DD0zzz1k00000000zs0zwTy000000000Q7000z1k00000001ww1sSQD000000000Q7000D1k00000001kQ1kDQ7000000000Q700071k0C7b0071kQ1k7w7000000000Q700031kzzzzs1ztkT1k7w7DzzzwzUDzw7s0031nzzzzy7zzkTVk3w7zzzzzzkzzw7y1w31rzzzzzDkzkTlk1w7zzzzzztzzw7z1y31zUUsEDT0D01lk0w7s8C47Uzs8A7r1y11y00k07w0700tk0w7U0A020TU0A731y31w00k03s0200tk0Q700A000D00A611w31w00k03s0301tk0A700A000D00A410031s00k01kC101lkMA600A000C00A030071s70kD1kT1kTlkM061kA30sC1kA070071sDUkT1k01kTVkQ063sA7UsC3sA0D00D1sBUkT1k03kT1kS063MA7UsC3MA0T00z1sDUkT1k07kT1kT063sA7UsC3sA0D1zz1s70kT1kTzkTVkT061kA7UwC1kA031zz0Q00kT1kDbk3lkTU700A7UwD00A011zb0A00kT1s03s1lkTk700A7UwD00A601s7UC00kT1w03s1lkTs7U0A7UwDU0A701k3UD00kTVy03w1lkTsDk0A7UwDk0A7VXk3sTllszXz07z3lswwDwQSDlwDwQSDnU"

if (ok:=FindText(levelposx, levelposy, 392-150000, 355-150000, 392+150000, 355+150000, 0, 0, Namakimg))
{
  goto, level2
}
}






	act:
	ToolTip, Choosing Act, 200, 200

Loop {
Act1img:="|<>*111$54.zzzzzzzzvz3zzzXzzkz3zzzVzzUy1zzzVzz0y1zzzVzw0w0zwT1Tw0w0zU60Dw0s0T000Dw0s8T020DzksMC171zzkkQC7zVzzkk067zVzzkU067zVzxkU023DVzzk1z207UTzk3z103UDzk3zVU7kDzk7zXsTsTzlU"

if (ok:=FindText(actposx, actposy, 872-150000, 374-150000, 872+150000, 374+150000, 0, 0, Act1img))
{
  goto, act2
}
}






	difficult:
	ToolTip, Changing difficult, 200, 200
	Sleep 500

Loop {
Difficultimg:="|<>*109$92.XXXU0000000003UkQkM0000000000sA3g61U00000000C30T1bz3zzzxy0zzUk7kPzxzzzzzszzsA0w7s7wMwMyDTCC3071s0y06021z03Uk0kQ07U1U00D00sA0A700s0M001k0C3111U0C06000M03UkE0MD1UzUkA63UsA6067kMDsC71VwC31k1Vw63y3VkMT3UkS0MD1UnUsQ63UsA7U610MDsC71U0C31w1U0C3y3VkQ03U0TUQ07UzUsQ700s07w7U3sDsC7Vs0D0XzXy1z7z7VsTV3s8"

if (ok:=FindText(difficultposx, difficultposy, 1221-150000, 498-150000, 1221+150000, 498+150000, 0, 0, Difficultimg))
{
  goto, difficult2
}
}








	confirm:
	ToolTip, Confirming, 200, 200
	Sleep 500
Loop {
Confirmimg:="|<>*104$94.Q0z0DVyA0240S777U0s0S7kk08E0sQsA0300sD300V01Uz0UQM61UQADy4C21s27zVy60kkzsEw8308Ty7w83307V3kUA0XVstkU4A0C4C2000C33X200k0sE0M048syCQ8E307V01V0kVzsTUVUADy40C6723vUy670kzsE0MQwA0700MQ33vV3VVzkk0A03VsAAC4D27z3U1s0S7kkksEw8MQLUDs3svX73X7lXVlU"

if (ok:=FindText(confirmposx, confirmposy, 765-150000, 729-150000, 765+150000, 729+150000, 0, 0, Confirmimg))
{
  goto, confirm2
}
}






	startlevel:
	ToolTip, Starting, 200, 200
	Sleep 500
Loop {
Startimg:="|<>*135$101.D03sTy00000000Dz0s01lsQ00000000wC3U01nUQ00000001kC6001a0s000000030QA003g1k000000060sE006M3U0000000A1kU7URk7s0yDkz7ss3x0TVrUDw7zzvzzzk7y0zzz0DszzvzjlzU7w1zyk00vk61s60s00M1znU00y001k00k00E0Tz001s003U01U00U03y003U007003001U01w007000C006003U00s00Q000Q00Q00DU01y0Fs000s1tz08rk01w1zU7k1k7zy0zbw03s3z0Dk3UDyw1zzzU3k760tU70M0M3VzzU7UCA1n0C0k0k733zUD0QM3y0Q1U1UC43y0S0zk3w0s3030TU3w0y0zk3U1k6070TU1k3w0DU003UA0C070007s0DU0070M0Q07000Rk0D000C0k0s07000zU0T000Q1zzk0D003zU0z000s3zzk0T00TzU3z043k7zzk1zU3zzsDzkwDkTzzw7U"

if (ok:=FindText(startposx, startposy, 1203-150000, 777-150000, 1203+150000, 777+150000, 0, 0, Startimg))
{
  goto, startlevel2
}
}




	level2:
Sleep 250
MouseMove, % levelposx, % levelposy, 5
MouseClick, L, % levelposx, % levelposy
	goto, act



	act2:
Sleep 250
MouseMove, % actposx, % actposy, 5
MouseClick, L, % actposx, % actposy
	goto, difficult



	difficult2:
Sleep 250
MouseMove, % difficultposx, % difficultposy, 5
MouseClick, L, % difficultposx, % difficultposy
	goto, confirm



	confirm2:
Sleep 250
MouseMove, % confirmposx, % confirmposy, 5
MouseClick, L, % confirmposx, % confirmposy
	goto, startlevel



	startlevel2:
Sleep 250
MouseMove, % startposx, % startposy, 5
MouseClick, L, % startposx, % startposy
Sleep 500
	goto, loading





	loading:
Sleep 250
Tooltip, Loading,200,200
MouseMove, % centerx, % centery, 2
Sleep 10000
goto, spawn







	spawn:
	ToolTip, Waiting config,200,200

Loop {
Configimg:="|<>*131$25.zw7zzy3zzz1zzU00zU00DU003s003w1w1y1z0z1zkQ1zw00zy00Tz00DzU07zk71zkTUTkDk7k7s003s000y000zU00zvkSzzsDzzw7zk"
if (ok:=FindText(configposx, configposy, 25-150000, 976-150000, 25+150000, 976+150000, 0, 0, Configimg))
{
  goto, config
}
}





	config:
MouseMove, % centerx, % centery, 5
Tooltip, Found, 200, 200
Sleep 500
MouseMove, % configposx, % configposy, 5
MouseClick, L, % configposx, % configposy
goto, respawn








	respawn:
Sleep 500
MouseMove, % centerx, % centery, 4
Sleep 10
Tooltip, Waiting respawn,200,200

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
MouseClickDrag, R, %centerx%, %centery%, %centerx%, % centery + 200, 4

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
	placesecond:

	Tooltip, Playing,200,200

sleep 10000

Send {%secondslot%}
MouseMove, %secondx%, %secondy%, 4

Loop, 20 	{
	Send {%secondslot%}
	Sleep 250
	MouseMove, %secondx%,%secondy%, 2
	Sleep 250
	MouseClick, L, %secondx%, %secondy%
	Sleep 500
	 	}

Send {%cancelkey%}
Sleep 1000
MouseClick, L, %secondx%, %secondy%
goto, upgradesecond






	upgradesecond:
Loop, 40 	{
	Sleep 4000
	Send {%upgkey%}
	 	}



sleep 5000





	placefirst:
Send {%firstslot%}
MouseMove, % firstx, % firsty,2

Loop, 20 	{
	Send {%firstslot%}
	Sleep 250
	MouseMove, % firstx, % firsty, 1
	Sleep 250
	MouseClick, L, % firstx ,% firsty
	Sleep 500
	 	}

Send {%cancelkey%}
MouseClick, L, % firstx ,% firsty
goto, upgradefirst





	upgradefirst:
Send {r}
sleep 100
Send {r}

Sleep 1000

Loop, 20 	{
	Sleep 4000
	Send {%upgkey%}
		}
goto, final







	final:
	ToolTip, Waiting the End,200,200
	MouseMove, % centerx + 500, % centery, 4
Loop,	200	 {
2500
Endimg:="|<>*122$53.s1zzzzzzzU1zzzzzzy03zzzzzzsD7zzzzzzkzzUS8MT01zy0A00Q07UM0M00M0C0ksk00kwS1VlVVVU8T303333U0S60C667UE0ADwAACsk0M0MMMM1k1s0lkkk3k7s3XnlkA"

	if (ok:=FindText(endposx, endposy, 1019-150000, 422-150000, 1019+150000, 422+150000, 0, 0, Endimg))
	{
		wins++
		sleep 200
		;ToolTip, WINS: %wins%, 1650, 905,6
		MouseMove, % centerx, % centery, 2
	goto, replay
	}
2500
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
