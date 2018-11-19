testsRotation
testRotateToTheNorthWhenFacingNorthAndRotateRightFourTimes
	|rover grid position obstacles commandFactory|
	obstacles := Set new.
	grid := Grid withObstacles: obstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	position := rover execute: 'RRRR'.
	self assert: position equals: '0:0:N'.