testsRotation
testRotateToTheEastWhenFacingNorthAndRotateLeftLeftRightRightRight
	|rover position|
	rover:=Rover new.
	position := rover execute: 'LLRRR'.
	self assert: position equals: '0:0:E'.