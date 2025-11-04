;e是替代复制，r是替代粘贴
$w::
{
Send {Ctrl down}{a}{Ctrl up}
Return
}
$e::
{
;Send {Ctrl down}{a}{Ctrl up}
Send {Ctrl down}{c}{Ctrl up}
Return
}
$r::
{
;Send {Ctrl down}{a}{Ctrl up}
Send {Ctrl down}{v}{Ctrl up}
Return
}

^!f::Suspend  ; Suspend script with Ctrl+Alt+F

