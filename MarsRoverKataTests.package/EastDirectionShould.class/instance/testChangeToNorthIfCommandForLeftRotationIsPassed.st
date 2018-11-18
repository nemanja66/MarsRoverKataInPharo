tests
testChangeToNorthIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover navigationParameters direction: (EastDirection withRover: rover).
	rover navigationParameters direction rotateLeft.
	self assert: rover navigationParameters direction symbol equals: $N.
	