tests
testChangeToNorthIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (EastDirection withRover: rover).
	rover direction rotate: $L.
	self assert: rover direction symbol equals: $N.
	