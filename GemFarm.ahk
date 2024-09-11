#SingleInstance, Force
Menu, Tray, Icon, %A_ScriptDir%\Images\diamante.ico

;POS
{
yesx = 710
yesy = 185
;848 217

restartx = 925
restarty = 730
;1150 825

endx = 710 ;+ 360
endy = 385 ;+ 280
;965 640

centerx = 848
centery = 520

configx = 10 ;+50
configy = 955 ;+50
;50 1005

respawnx = 520 ;+350
respawny = 380 ;+80
;800 435
;teleport button = 1080 410

lobbyplayx = 115 ;+120
lobbyplayy = 390 ;+110
;220 495

selectx = 230
selecty = 200
selectx2 = 1515
selecty2 = 820



variance = 100
}

;UNITS
{
painslot = 3
painx = 955
painy = 690

sasukeslot = 4
sasukex = 955
sasukey = 560

upgkey = t
cancelkey = q
zoomout = o

;placex = 615
;placey = 260
;placex2 = 1095
;placey2 = 835
;varianceplace = 150
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

main:
Sleep 5000
Loop {
	Tooltip, Waiting Lobby 🕹️
	Sleep 10
ImageSearch, lobbyplayposx, lobbyplayposy, %lobbyplayx% , %lobbyplayy%, % lobbyplayx + 120, % lobbyplayy + 110, *%variance% %A_ScriptDir%\Images\lobbyplay.png
if (Errorlevel = 0) {
Sleep 500
MouseMove, % lobbyplayposx, % lobbyplayposy
Sleep 500
MouseClick, L, % lobbyplayposx, % lobbyplayposy
Sleep 200
goto, walk
}
if (Errorlevel = 1) {
	Sleep 10
ImageSearch, lobbyplayposx, lobbyplayposy, %lobbyplayx% , %lobbyplayy%, % lobbyplayx + 120, % lobbyplayy + 110, *%variance% %A_ScriptDir%\Images\lobbyplay2.png
if (Errorlevel = 0) {
Sleep 500
MouseMove, % lobbyplayposx, % lobbyplayposy
Sleep 500
MouseClick, L, % lobbyplayposx, % lobbyplayposy
Sleep 200
goto, walk
}
if (Errorlevel = 1) {
	goto, main
}
}
}







walk:
Sleep 1000

Tooltip, Ajusting Camera 📷, 200,200

sleep 500
MouseMove, %centerx%, %centery%
sleep 200
MouseClickDrag, R, %centerx%, %centery%, %centerx%, % centery + 200
sleep 500
Loop, 30
{
Sleep 10
Send {Wheelup}
Sleep 10
}
Sleep 1000
Loop, 10
{
Sleep 10
Send {WheelDown}
Sleep 10
}

Tooltip, Walking 🚶‍➡, 200, 200

Sleep 200

Send {w down}
Sleep 10
Send {d down}
sleep 5
Send {Shift down}
Sleep 2000
Send {w up}
Sleep 5
Send {d up}
sleep 5
Send {Shift up}
Sleep 1000
goto, select







select:
level:
Loop{
	Tooltip, Choosing level 🕹️, 200, 200
	Sleep 10
ImageSearch, levelposx, levelposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\namek.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % levelposx, % levelposy
Sleep 500
MouseClick, L, % levelposx, % levelposy
Sleep 200
goto, act
}
if (Errorlevel = 1) {
	Sleep 10
ImageSearch, levelposx, levelposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\namek2.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % levelposx, % levelposy
Sleep 500
MouseClick, L, % levelposx, % levelposy
Sleep 200
goto, act
}
if (Errorlevel = 1) {
	goto, level
}
}
}








act:
Loop {
	ToolTip, Choosing Act 📖, 200, 200
	Sleep 10
ImageSearch, actposx, actposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\act1.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % actposx, % actposy
Sleep 500
MouseClick, L, % actposx, % actposy
Sleep 200
goto, difficult
}
if (Errorlevel = 1) {
	Sleep 10
ImageSearch, actposx, actposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\act1_2.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % actposx, % actposy
Sleep 500
MouseClick, L, % actposx, % actposy
Sleep 200
goto, difficult
}
if (Errorlevel = 1) {
	goto, level
}
}
}










difficult:
Loop {
	ToolTip, Changing difficult ☠️, 200, 200
	Sleep 10
ImageSearch, difficultposx, difficultposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\normal.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % difficultposx, % difficultposy
Sleep 500
MouseClick, L, % difficultposx, % difficultposy
Sleep 200
goto, confirm
}
if (Errorlevel = 1) {
	Sleep 10
ImageSearch, difficultposx, difficultposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\normal2.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % difficultposx, % difficultposy
Sleep 500
MouseClick, L, % difficultposx, % difficultposy
Sleep 200
goto, confirm
}
if (Errorlevel = 1) {
	goto, level
}
}
}










confirm:
Sleep 500

Loop {
	ToolTip, Confirming ✅, 200, 200
	Sleep 10
ImageSearch, confirmposx, confirmposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\confirm.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % confirmposx, % confirmposy
Sleep 500
MouseClick, L, % confirmposx, % confirmposy
Sleep 200
goto, startlevel
}
if (Errorlevel = 1) {
	Sleep 10
ImageSearch, confirmposx, confirmposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\confirm2.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % confirmposx, % confirmposy
Sleep 500
MouseClick, L, % confirmposx, % confirmposy
Sleep 200
goto, startlevel
}
if (Errorlevel = 1) {
	goto, level
}
}
}





startlevel:
Sleep 500

Loop {
	ToolTip, Starting ✅, 200, 200
	Sleep 10
ImageSearch, startposx, startposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\start.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % startposx, % startposy
Sleep 500
MouseClick, L, % startposx, % startposy
Sleep 200
goto, loading
}
if (Errorlevel = 1) {
	Sleep 10
ImageSearch, startposx, startposy, %selectx% , %selecty%, % selectx2, % selecty2, *%variance% %A_ScriptDir%\Images\start2.png
if (Errorlevel = 0){
Sleep 500
MouseMove, % startposx, % startposy
Sleep 500
MouseClick, L, % startposx, % startposy
Sleep 200
goto, loading
}
if (Errorlevel = 1) {
	goto, level
}
}
}










loading:
MouseMove, % centerx, % centery
Sleep 200
Tooltip, Loading ⏳
Sleep 5000










spawn:
Loop
{
	ToolTip, Waiting config ⚙️
	Sleep 10
ImageSearch, configposx, configposy, %configx% , %configy%, % configx + 150, % configy + 50, *%variance% %A_ScriptDir%\Images\config.png
if (Errorlevel = 0) {
	Sleep 500
	MouseMove, % configposx, % configposy
	Sleep 500
	MouseClick, L, % configposx, % configposy
	Sleep 200
	goto, respawn
}
if (Errorlevel = 1) {
	Sleep 10
ImageSearch, configposx, configposy, %configx% , %configy%, % configx + 150, % configy + 50, *%variance% %A_ScriptDir%\Images\config2.png
if (Errorlevel = 0) {
	Sleep 500
	MouseMove, % configposx, % configposy
	Sleep 500
	MouseClick, L, % configposx, % configposy
	Sleep 200
	goto, respawn
}
if (Errorlevel = 1) {
	goto, spawn
}
}
}








respawn:
Tooltip, Found
Sleep 500
MouseMove, % centerx, % centery
Sleep 500

Loop, 5
{
Sleep 10
Send {WheelDown}
Sleep 10
}

Sleep 200

Loop
{
	ToolTip, Searching respawn 🚼
	Sleep 10
ImageSearch, respawnposx, respawnposy, %respawnx% , %respawny%, % respawnx + 350, % respawny + 80, *%variance% %A_ScriptDir%\Images\respawn.png
if (Errorlevel = 0) {
Sleep 1000
MouseMove, % respawnposx + 560, % respawnposy + 5
Sleep 250
Tooltip, Found
Sleep 250
MouseClick, L, % respawnposx + 560, % respawnposy + 5
Sleep 500
MouseMove, % configposx, % configposy
Sleep 500
MouseClick, L, % configposx, % configposy
Sleep 200
goto, camera
}
}









camera:
Tooltip, Ajusting Camera 📷,200,200
sleep 200
MouseMove, %centerx%, %centery%
sleep 200
MouseClickDrag, R, %centerx%, %centery%, %centerx%, % centery + 200
sleep 500
Loop, 30
{
Sleep 10
Send {Wheelup}
Sleep 10
}
Sleep 1000
Loop, 10
{
Sleep 10
Send {WheelDown}
Sleep 10
}
goto, farm








farm:
Loop {

start:
Loop {

	ToolTip, Searching start ➡️
	Sleep 10
ImageSearch, yesposx, yesposy, %yesx% , %yesy%, % yesx + 150, % yesy + 50, *%variance% %A_ScriptDir%\Images\yes.png

if (ErrorLevel = 0) {
goto, yes
}
}






yes:
ToolTip, Found
sleep 500
MouseMove, % yesposx + 10, %yesposy%
sleep 1000
MouseClick, L, % yesposx + 10, %yesposy%
sleep 100
ToolTip,
goto, units






units:
placepain:

	Tooltip, Playing 🕹️,200,200

sleep 10000

Send {%painslot%}
Sleep 1000
MouseMove, %painx%, %painy%

Loop, 20
{
Send {%painslot%}
Sleep 500
MouseMove, %painx%,%painy%
sleep 200
MouseClick, L, %painx%, %painy%
}
Send {%cancelkey%}
Sleep 1000
goto, upgradepain






upgradepain:
Loop, 40
{
Sleep 2000
Send {%upgkey%}
Sleep 2000
}



sleep 5000





placesasuke:
Send {%sasukeslot%}
Sleep 1000
MouseMove, % sasukex ,% sasukey

Loop, 15
{
Send {%sasukeslot%}
Sleep 500
MouseMove, % sasukex ,% sasukey
sleep 200
MouseClick, L, % sasukex ,% sasukey
}
Send {%cancelkey%}
Sleep 1000
goto, upgradesasuke





upgradesasuke:
Sleep 200
Send {r}
sleep 100
Send {r}
sleep 100

Loop, 15
{
Sleep 3000
Send {%upgkey%}
Sleep 3000
}
sleep 1000
goto, final







final:
Loop {

	ToolTip, End
	Sleep 100
ImageSearch, endposx, endposy, %endx%, %endy%, % endx + 360, % endy + 280, *%variance% %A_ScriptDir%\Images\gem3.png

if (Errorlevel = 0) {
goto, clickend
}
}

clickend:
sleep 500
MouseMove, %centerx%, %centery%
Sleep 500
MouseClick,L,% centerx, % centery
Sleep 500
goto, replay





replay:
Loop{

	ToolTip, Searching replay 🔄️
	Sleep 10
ImageSearch, restartposx, restartposy, %restartx%, %restarty%, % restartx + 300, % restarty + 100, *%variance% %A_ScriptDir%\Images\replay.png

if (Errorlevel = 0)
{
goto, restart
}
if (Errorlevel = 1)
{

	Sleep 10
ImageSearch, restartposx, restartposy, %restartx%, %restarty%, % restartx + 300, % restarty + 100, *%variance% %A_ScriptDir%\Images\replay2.png

if (ErrorLevel = 0)
{
goto, restart
}
if (Errorlevel = 1)
{

	Sleep 10
ImageSearch, restartposx, restartposy, %restartx%, %restarty%, % restartx + 300, % restarty + 100, *%variance% %A_ScriptDir%\Images\retry.png

if (ErrorLevel = 0)
{
goto, restart
}
if (Errorlevel = 1)
{

	Sleep 10
ImageSearch, restartposx, restartposy, %restartx%, %restarty%, % restartx + 300, % restarty + 100, *%variance% %A_ScriptDir%\Images\retry2.png

if (ErrorLevel = 0)
{
goto, restart
}
if (Errorlevel = 1)
{
	goto, clickend
}
}
}
}
}




restart:
ToolTip, Found
sleep 500
MouseMove, % restartposx + 20, %restartposy%
sleep 1000
MouseClick,L,% restartposx + 20, %restartposy%
sleep 100
ToolTip,
goto, start
}

return