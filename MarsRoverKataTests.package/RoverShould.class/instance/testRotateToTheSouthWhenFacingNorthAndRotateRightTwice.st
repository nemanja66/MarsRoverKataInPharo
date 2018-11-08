testsRotation
testRotateToTheSouthWhenFacingNorthAndRotateRightTwice
	|rover position|
	rover:=Rover new.
	position := rover execute: 'RR'.
	self assert: position equals: '0:0:S'.