/*
string:=chrandom()
gui,add,edit,h100 w100,% string
gui,show,,random chars
Return

GuiClose:
ExitApp
Clipboard :=string
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
F6:: SendRaw %string%
