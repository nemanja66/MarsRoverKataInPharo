testsRotation
testRotateToTheNorthWhenFacingNorthAndRotateLeftFourTimes
	|rover grid position obstacles commandFactory|
	obstacles := Set new.
	grid := Grid withObstacles: obstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	position := rover execute: 'LLLL'.
	self assert: position equals: '0:0:N'.