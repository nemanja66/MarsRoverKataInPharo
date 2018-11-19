tests
testChangeToWestIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (NorthDirection withRover: rover).
	rover direction rotateLeft.
	self assert: rover direction symbol equals: $W.