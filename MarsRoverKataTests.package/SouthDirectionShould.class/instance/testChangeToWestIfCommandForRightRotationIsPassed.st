tests
testChangeToWestIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (SouthDirection withRover: rover).
	rover direction rotateRight.
	self assert: rover direction symbol equals: $W.