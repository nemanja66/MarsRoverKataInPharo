tests
testChangeToNorthIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (WestDirection withRover: rover).
	rover navigationParameters direction rotateRight.
	self assert: rover navigationParameters direction symbol equals: $N.