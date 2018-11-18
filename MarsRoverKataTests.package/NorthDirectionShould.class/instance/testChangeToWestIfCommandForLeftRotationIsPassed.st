tests
testChangeToWestIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (NorthDirection withRover: rover).
	rover navigationParameters direction rotateLeft.
	self assert: rover navigationParameters direction symbol equals: $W.