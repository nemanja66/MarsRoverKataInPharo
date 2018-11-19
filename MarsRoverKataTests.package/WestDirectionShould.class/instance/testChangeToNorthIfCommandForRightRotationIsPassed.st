tests
testChangeToNorthIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (WestDirection withRover: rover).
	rover direction rotateRight.
	self assert: rover direction symbol equals: $N.