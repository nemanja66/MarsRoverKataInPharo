tests
testChangeToWestIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (SouthDirection withRover: rover).
	rover navigationParameters direction rotateRight.
	self assert: rover navigationParameters direction symbol equals: $W.