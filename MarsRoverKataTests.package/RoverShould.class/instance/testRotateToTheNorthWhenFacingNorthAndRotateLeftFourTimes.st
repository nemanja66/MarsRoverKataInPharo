testsRotation
testRotateToTheNorthWhenFacingNorthAndRotateLeftFourTimes
	|rover position|
	rover:=Rover new.
	position := rover execute: 'LLLL'.
	self assert: position equals: '0:0:N'.