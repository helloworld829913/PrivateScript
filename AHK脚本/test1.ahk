
/*
这是用来生成随机脚本的函数。
而且，把大写的概率调高了
*/
chrandom(Digit="16")
{
	loop,%Digit%
	{
		random,chrtype,1,4
		if chrtype=1
			random,chr,asc("0"),asc("9") ;48,57
		Else if (chrtype=2 or chrtype=3)
			random,chr,asc("A"),asc("Z") ;65,90
		Else
			random,chr,asc("a"),asc("z") ;97,122
		string:= string . chr(chr)
	}
	return string
}

string :=chrandom()
:o?:,sj::
{
send %string%
Reload
Return
}



#IfWinActive ahk_exe Notion.exe
!d:: ;ALT+D。notion中删除一整行 
{
send {space}
Sleep 20
send /del {Enter}
Sleep 250
send {Down}
Sleep 100
send {Enter}
Return 
} 
!Enter:: ;Ctrl+Enter 用于notion回车，到下一行。因为数字列表的时候，回车老是自动又变成数字列表了，而不是普通的文本
!NumpadEnter:: 
{
Sleep 100
Send {Enter} 
Sleep 50  
Send {Backspace} 
Sleep 50 
send {Tab}
Return
}

;#IfWinActive ahk_exe TianruoOCR64.exe
;用于在excel中，切换不同的sheet
#IfWinActive ahk_class XLMAIN
XButton1::^PgUp
XButton2::^PgDn
;alt+F3,粘贴复制的内容，并把它放到最前面

!f3::
{
send {f2}
send {Home}
Sleep 20
Send {Ctrl down}{v}{Ctrl up}--{Enter}
Return
}


#IfWinActive
!f2:: ;ALT+F2
if WinExist("ahk_class XLMAIN")
    WinActivate ahk_class XLMAIN  ; 使用 WinExist 找到的窗口
Return
f3:: ;用于剪切板换行
{
Sleep 20
Send {Enter}
Sleep 20
Send {Down}
Sleep 20
Send {end}
Return
}


;输出“I/O”字符
/*
f4::
{
Send {Backspace}
Sleep 20
Send {Backspace}
Sleep 20
Send {Backspace}
Sleep 20
SendInput {TEXT}I/O
Return
}
*/

;因为钉钉视频切出去再切回来，总是不能再用空格播放
;所以就用键盘的鼠标右键按钮替代了，点击再播放的功能
AppsKey:: 
{
send {LButton}
send {Space}
Return
}

;因为想在excel中添加行，而键盘左边的+号太远了，所以就用小键盘的替代了
NumpadAdd::=


/*
^+NumpadAdd:: { 
Send {Ctrl}KeyWait, {Shift},D,{=}
return

Sleep 20
Send {Ctrl}
Sleep 20
Send Send {Shift}
Sleep 20
SendSend {=}*/

}
*/




;用于输入chatgpt的promt，？ 问号表示，使用回车，空格，tab键都可以触发
:o?:,pr::请对本次我输入的，用markdown格式编写的的文字进行整理，列成一个不限行数，只限2列的表格，第一列为问题，第二列为答案。第二列答案中，要采用列点的方式给出，并且标上数字顺序，就像1. 2. 3. 这样的序列，并在单元格内换行。不需要自行添加过多的内容，且尽可能的保留原有的内容不会被删除。
:o?:,rec::Reply me in English and Chinese every single time.
;:o?:,hyd::请将上述内容，通过列要点的方式，划分成多个小点。
:o?:,hyd::请对以上内容进行尽量的精简，概括出大概内容，挑选出其中的重点，采用简洁的语言，用数字序列的方式列出来。而且重点的数量越少越好。
;用来调整anki的图片大小使用的。
:o?:,wh::width=50%,high=50%"
:o?:,s2::² ;上标2
:o?:,x2::₂ ;下标2 
:o?:,gs::\(\)  ;下标2 




