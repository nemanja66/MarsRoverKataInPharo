tests
testChangeToEastIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (SouthDirection withRover: rover).
	rover direction rotateLeft.
	self assert: rover direction symbol equals: $E.