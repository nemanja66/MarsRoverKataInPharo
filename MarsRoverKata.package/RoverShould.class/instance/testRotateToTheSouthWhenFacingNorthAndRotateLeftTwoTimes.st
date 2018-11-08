testsRotation
testRotateToTheSouthWhenFacingNorthAndRotateLeftTwoTimes
	|rover position|
	rover:=Rover new.
	position := rover execute: 'LL'.
	self assert: position equals: '0:0:S'.