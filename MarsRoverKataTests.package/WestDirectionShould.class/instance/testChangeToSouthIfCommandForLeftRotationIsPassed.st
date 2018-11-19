tests
testChangeToSouthIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (WestDirection withRover: rover).
	rover direction rotateLeft.
	self assert: rover direction symbol equals: $S.