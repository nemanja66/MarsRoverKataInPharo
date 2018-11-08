testsRotation
testRotateToTheWestWhenFacingNorthAndRotateRightThreeTimes
	|rover position|
	rover:=Rover new.
	position := rover execute: 'RRR'.
	self assert: position equals: '0:0:W'.
