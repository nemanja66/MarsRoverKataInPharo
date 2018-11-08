tests
testChangeToEastIfCommandForRightRotationIsPassed
	|rover|
	rover := Rover new.
	rover direction: (NorthDirection  withRover: rover).
	rover direction rotate: $R.
	self assert: rover direction symbol equals: $E.