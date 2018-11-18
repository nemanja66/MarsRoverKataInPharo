tests
testChangeToSouthIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (WestDirection withRover: rover).
	rover navigationParameters direction rotateLeft.
	self assert: rover navigationParameters direction symbol equals: $S.