testMovement
testMoveRightTwoSteps
	|rover position navigator grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	commandFactory := CommandFactory withNavigator: navigator.
	rover:=Rover withCommandFactory: commandFactory.
	rover navigationParameters direction: (EastDirection withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '2:0:E'.