SendMode Input
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0


CoordMode, Mouse, Screen 
CoordMode, Pixel, Screen 
Moitiex := A_ScreenWidth / 2 
Moitiey := A_ScreenHeight / 2 
Triggerbot = 0 
sens = 2
paire1x := 840
paire1y := 420
paire2x := 1080
paire2y := 660
aimcolor = 0x5D56EB

couleur = 000000
Gui OSD:+LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, OSD:Color, couleur
Gui, OSD:Font, s12
Gui, OSD:Add, Text, cRed , En marche

Gui, OSD:Show, x0 y0 NoActivate

~RButton::
{
	While GetKeyState("RButton"){
PixelSearch, pixelx, pixely, paire1x, paire1y, paire2x, paire2y, %aimcolor%, 7, Fast
If ErrorLevel = 0 
{ 
pixelx := pixelx + 42
pixely := pixely + 30
Pixelxcal := ((pixelx - Moitiex) / sens) 
Pixelycal := ((pixely - Moitiey) / sens) 
MouseMove, Pixelxcal, Pixelycal,, R
}
}
}
return 