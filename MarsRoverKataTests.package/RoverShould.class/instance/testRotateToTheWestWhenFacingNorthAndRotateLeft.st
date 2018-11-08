testsRotation
testRotateToTheWestWhenFacingNorthAndRotateLeft
	|rover position|
	rover:=Rover new.
	position := rover execute: 'L'.
	self assert: position equals: '0:0:W'.