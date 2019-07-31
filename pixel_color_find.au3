; Finding pixel colors in a certain rectangle range!!!

; defining the values for the rectangle to search for
$left = 13
$top = 49
$right = 882
$bottom = 151

func getColor($color)
	Return PixelSearch($left,$top, $right, $bottom, $color)
EndFunc

;main
$colorToFind = "0x005696"
$aCoord = getColor($colorToFind)
MouseClick("left",$aCoord[0],$aCoord[1])