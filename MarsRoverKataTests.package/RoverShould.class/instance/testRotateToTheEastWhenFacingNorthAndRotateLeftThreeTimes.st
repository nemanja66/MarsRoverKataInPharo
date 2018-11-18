testsRotation
testRotateToTheEastWhenFacingNorthAndRotateLeftThreeTimes
	|rover grid navigator position obstacles commandFactory|
	obstacles := Set new.
	grid := Grid withObstacles: obstacles.
	navigator := Navigator withGrid: grid.
	commandFactory := CommandFactory withNavigator: navigator.
	rover:=Rover withCommandFactory: commandFactory.
	position := rover execute: 'LLL'.
	self assert: position equals: '0:0:E'.