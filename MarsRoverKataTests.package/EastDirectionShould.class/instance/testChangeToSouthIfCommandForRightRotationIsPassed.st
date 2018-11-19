tests
testChangeToSouthIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (EastDirection withRover: rover).
	rover direction rotateRight.
	self assert: rover direction symbol equals: $S.