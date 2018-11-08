tests
testChangeToEastIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (SouthDirection   withRover: rover).
	rover direction rotate: $L.
	self assert: rover direction symbol equals: $E.