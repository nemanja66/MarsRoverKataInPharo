tests
testChangeToEastIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (SouthDirection withRover: rover).
	rover navigationParameters direction rotateLeft.
	self assert: rover navigationParameters direction symbol equals: $E.