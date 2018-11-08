tests
testChangeToSouthIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (EastDirection withRover: rover).
	rover direction rotate: $R.
	self assert: rover direction symbol equals: $S.