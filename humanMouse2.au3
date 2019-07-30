;hit ESC to end script
Func EndProgram()
    Exit
EndFunc   ;==>EndProgram

HotKeySet("{ESC}", 'EndProgram')

; Ease in function
func __calci1($i, $sm)
    return $i ^ $sm;
endFunc

; Ease out function
func __calci2($i, $sm)
    return 1 - ((1 - $i) ^ $sm);
endFunc

; Ease in out function
func __calci($i, $sm)
    if ($i < 0.5) then
        return __calci1($i * 2, $sm) / 2;
    else
        return (__calci2(($i - 0.5) * 2, $sm) / 2) + 0.5;
    endIf
endFunc

; Ease backward function
func __calof($i, $sm)
    if ($i < 0.5) then
        return __calci($i * 2, $sm);
    else
        return __calci((1 - $i) * 2, $sm);
    endIf
endfunc

; Move mouse "human" like
func mouseMove2($x2, $y2)
	Sleep(250)
    $x1 = mouseGetPos(0)
    $y1 = mouseGetPos(1)
    $xv = random(-100, 100)
    $yv = random(-100, 100)
    $sm = random(1.5, 2.5);
    $m = random(50, 160);
    for $i = 0 to $m
        $ci = __calci($i / $m, $sm);
        $co = __calof($i / $m, $sm);
        $cx = $x1 + (($x2 - $x1) * $ci) + ($xv * $co);
        $cy = $y1 + (($y2 - $y1) * $ci) + ($yv * $co);
        mouseMove ($cx, $cy, 1);
    next
endFunc

;drag and drop
func mouseDrag($x3, $y3)
	MouseDown("left")
	MouseMove2($x3, $y3)
	MouseUp("left")
EndFunc

; Test Script
While True

	;mouseDrag(1440, 451);

	;mouseDrag(1504, 223);
	MouseMove2(-1227,400)
	MouseMove2(-1200,410)
	MouseMove2(-1250,430)
	MouseMove2(-1207,380)
	MouseMove2(1440, 451)

WEnd