tests
testChangeToNorthIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (EastDirection withRover: rover).
	rover direction rotateLeft.
	self assert: rover direction symbol equals: $N.
	