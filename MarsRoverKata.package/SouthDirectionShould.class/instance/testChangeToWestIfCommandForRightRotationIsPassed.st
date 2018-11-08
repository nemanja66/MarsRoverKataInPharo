tests
testChangeToWestIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (SouthDirection   withRover: rover).
	rover direction rotate: $R.
	self assert: rover direction symbol equals: $W.