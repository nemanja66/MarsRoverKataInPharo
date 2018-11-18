tests
testChangeToEastIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (NorthDirection withRover: rover).
	rover navigationParameters direction rotateRight.
	self assert: rover navigationParameters direction symbol equals: $E.