#include GermanAlphabet.ahk
#include ABC.ahk
CNSetPassword()

	Rnd1 =0
	Rnd2=0
	Rnd3=0
	Rnd4=0
^!a::   ;ctrl+alt+a
	;CNSetPassword()
	x := CNGetPassword()
	WinGetTitle, Title, A
	
	if Title contains Cisco
	{
		;SendRaw uidv4173@cw01.contiwan.com`t
	}
	else
	{
		SendRaw uidv4173`t
	}
	
	SendRaw %x%`n
	Return

^!r::  ;ctrl+alt+r
	if(Var2 = 1)
	{
	return
	}
	while(Var2=0)
	{
	LabelClick()
	}

	Return

LabelClick() {
	Var2=1
	Random, Rnd1, 10000, 30000, NewSeed
	Random, Rnd2, 0, 9, NewSeed
	Random, Rnd3, 0, 9, NewSeed
	Random, Rnd4, 0, 9, NewSeed
	MouseClick, left, 1024, 448
	Sleep, %Rnd1%
	MouseClick, left, 383, 452
	MouseClick, left
	Random, Rnd1, 10000, 30000, NewSeed
	
	SendRaw 560
	SendRaw %Rnd2%
	SendRaw %Rnd3%
	SendRaw %Rnd4%
	
}

^!t::
	if WinExist("Cisco AnyConnect Secure Mobility Client")
	{
		WinActivate  ; Uses the last found window.
	}
	else
	{

	}
	return

^!e::   ;ctrl+alt+e
	SendRaw yadnyesh.bhangale@continental-corporation.com
	Return

;^!s::   ;ctrl+alt+s
;run, %comspec% /c si viewsandbox -g,,hide 
;Return

;^!d::   ;ctrl+alt+d
;SoundBeep
;run, %comspec% /c pythonw "D:\04_Yadnyesh Personal\MMe4M.pyw",,hide 
;Return

^!d::   ;ctrl+alt+d
	if(Var1 = 1)
	{
		SetTimer, SendletterA, Delete
		SoundBeep, 880, 200
		SoundBeep, 1046, 500
		Var1 = 0
		return
	}
	Var1 = 1	
	SoundBeep, 880, 200
	SoundBeep, 740, 500
	SetTimer, SendLetterA, 10000
	return

SendLetterA() {
	SetKeyDelay, 100
	Send, {NumLock}
	Send, {NumLock}
}

^!`::
	FormatTime, time, A_now, dd.MM.yyyy
	SendRaw (%time%, Yadnyesh)
	return

^!;::
	FormatTime, time, A_now, d-MMM-yy
	SendRaw %time%
	return


!a:: 
GermanKey("a")
return

!+a:: 
GermanKey("a")
return
	
!O:: 
GermanKey("o")
return

!+O:: 
GermanKey("o")
return
	
!U:: 
GermanKey("u")
return

!+U:: 
GermanKey("u")	
return
	
!S:: 
GermanKey("s")
return

!e:: 
GermanKey("e")
return

!m:: 
GermanKey("m")
return

!"::
GermanKey("""")
return