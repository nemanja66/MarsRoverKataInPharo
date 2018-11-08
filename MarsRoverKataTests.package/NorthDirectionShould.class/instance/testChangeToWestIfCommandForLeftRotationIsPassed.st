tests
testChangeToWestIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (NorthDirection  withRover: rover).
	rover direction rotate: $L.
	self assert: rover direction symbol equals: $W.