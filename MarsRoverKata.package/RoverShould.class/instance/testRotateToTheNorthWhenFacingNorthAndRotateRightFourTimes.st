testsRotation
testRotateToTheNorthWhenFacingNorthAndRotateRightFourTimes
	|rover position|
	rover:=Rover new.
	position := rover execute: 'RRRR'.
	self assert: position equals: '0:0:N'.