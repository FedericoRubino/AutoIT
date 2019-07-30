
Func EndProgram()
    Exit
EndFunc   ;==>EndProgram

HotKeySet("{ESC}", 'EndProgram')
$run_program = True

MouseClick("left", 2866,-159)

While True
	WinActivate("Untitled")
	send("Hello World")
	sleep(200)
	send("{enter}")
	send("use the help menu button to find any button commands")
	;send("!{F4}")
	sleep(500)
	MouseClick("left", 844,219)
	sleep(500)
	For $1 = 6 To 0 Step -1
		send("{Down}")
		sleep(200)
	Next
	send("{enter}")
	MouseClick("left", 1067,532)

WEnd


;idea for functions
; to execute a function you must put it into call()
;func botKey (whatToSend, loopCount, delayTime)
;	for $x = 0 to $loopCount
;		Send(whatToSend + "down")
;	Next
;EndFunc