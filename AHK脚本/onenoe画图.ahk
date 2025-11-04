;^!r::Reload   ; Reload script with Ctrl+Alt+R
/*
#IfWinActive ahk_exe ONENOTE.EXE
e:: ; 点击橡皮擦
{
MouseGetPos, xpos, ypos 
Click 193, 59
Sleep 5
Click 185, 110
MouseMove, xpos, ypos 
Return
}

1::
{
MouseGetPos, xpos, ypos 
Click 86, 191
MouseMove, xpos, ypos 
Return
}
2::
{
MouseGetPos, xpos, ypos 
Click 111, 194
MouseMove, xpos, ypos 
Return
}
3::
{
MouseGetPos, xpos, ypos 
Click 138, 187
MouseMove, xpos, ypos 
Return
}
4::
{
MouseGetPos, xpos, ypos 
Click 170, 194
MouseMove, xpos, ypos 
Return
}
z::^z
^!s::Suspend  ; Suspend script with Ctrl+Alt+S
*/


;onenote UWP 版本的代码
#IfWinActive ahk_exe ApplicationFrameHost.exe
^!s::Suspend  ; Suspend script with Ctrl+Alt+S
!e:: ; 点击橡皮擦
{
MouseGetPos, xpos, ypos 
Click 241, 99
MouseMove, xpos, ypos 
Return
}

1::
{
MouseGetPos, xpos, ypos 
Click 278, 83
MouseMove, xpos, ypos 
Return
}
2::
{
MouseGetPos, xpos, ypos 
Click 312, 87
MouseMove, xpos, ypos 
Return
}
3::
{
MouseGetPos, xpos, ypos 
Click 357, 91
MouseMove, xpos, ypos 
Return
}
4::
{
MouseGetPos, xpos, ypos 
Click 398, 89
MouseMove, xpos, ypos 
Return
}
!w:: ;点击索套
{
MouseGetPos, xpos, ypos 
Click 155, 95
MouseMove, xpos, ypos 
Return
}





