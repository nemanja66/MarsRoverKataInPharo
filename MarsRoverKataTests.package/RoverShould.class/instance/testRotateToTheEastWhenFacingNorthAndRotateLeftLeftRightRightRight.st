testsRotation
testRotateToTheEastWhenFacingNorthAndRotateLeftLeftRightRightRight
	|rover grid position obstacles commandFactory|
	obstacles := Set new.
	grid := Grid withObstacles: obstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	position := rover execute: 'LLRRR'.
	self assert: position equals: '0:0:E'.