
Func EndProgram()
    Exit
EndFunc   ;==>EndProgram

HotKeySet("{ESC}", 'EndProgram')


While True
	$iStart_X = 100
	$iStart_Y = 100

	$iEnd_X = 400
	$iEnd_Y = 300

	$nIncrement_X = ($iEnd_X - $iStart_X) / ($iEnd_Y - $iStart_Y)
	$nIncrement_Y = ($iEnd_Y - $iStart_Y) / ($iEnd_X - $iStart_X)

	; Most direct route
	$nMouse_X = $iStart_X
	$nMouse_Y = $iStart_Y
	Do
		$nMouse_X += $nIncrement_X
		$nMouse_Y += $nIncrement_Y
		MouseMove(Int($nMouse_X), Int($nMouse_Y), 1)
	Until $nMouse_X >= $iEnd_X Or $nMouse_Y >= $iEnd_Y

	; Randomised route
	$nMouse_X = $iStart_X
	$nMouse_Y = $iStart_Y
	Do
		$nMouse_X += $nIncrement_X * (Random(.5, 1.5))
		$nMouse_Y += $nIncrement_Y * (Random(.5, 1.5))
		MouseMove(Int($nMouse_X), Int($nMouse_Y), 1)
	Until $nMouse_X >= $iEnd_X Or $nMouse_Y >= $iEnd_Y
WEnd
