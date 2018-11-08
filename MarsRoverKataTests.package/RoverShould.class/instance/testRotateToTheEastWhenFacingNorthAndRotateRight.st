testsRotation
testRotateToTheEastWhenFacingNorthAndRotateRight
	|rover position|
	rover:=Rover new.
	position := rover execute: 'R'.
	self assert: position equals: '0:0:E'.
	