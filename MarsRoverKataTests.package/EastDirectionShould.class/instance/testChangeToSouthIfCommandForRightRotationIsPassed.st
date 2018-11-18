tests
testChangeToSouthIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (EastDirection withRover: rover).
	rover navigationParameters direction rotateRight.
	self assert: rover navigationParameters direction symbol equals: $S.