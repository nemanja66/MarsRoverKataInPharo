tests
testChangeToSouthIfCommandForLeftRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (WestDirection withRover: rover).
	rover direction rotate: $L.
	self assert: rover direction symbol equals: $S.