testsRotation
testRotateToTheEastWhenFacingNorthAndRotateLeftThreeTimes
	|rover position|
	rover:=Rover new.
	position := rover execute: 'LLL'.
	self assert: position equals: '0:0:E'.