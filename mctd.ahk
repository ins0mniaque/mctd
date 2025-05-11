#Requires AutoHotkey v2.0
#SingleInstance force
SendMode("Input")

TraySetIcon("mctd.ico")
A_IconTip := "Middle Click To Definition"
A_TrayMenu.Delete()
A_TrayMenu.Add("mctd 1.0", (*) => { })
A_TrayMenu.Disable("mctd 1.0")
A_TrayMenu.Add()
A_TrayMenu.Add("&Help", (*) => Run("https://www.github.com/ins0mniaque/mctd"))
A_TrayMenu.Add("E&xit", (*) => ExitApp())

GroupAdd "IDE", "ahk_exe code.exe"
GroupAdd "IDE", "ahk_exe devenv.exe"
GroupAdd "IDE", "ahk_exe rider.exe"

#HotIf WinActive("ahk_group IDE")
~MButton::
{
	MouseGetPos(&xpos, &ypos)
	SendInput("{Click}{F12}")
}