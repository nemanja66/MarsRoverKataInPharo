testMovement
testMoveSouthTwoSteps
	|rover position navigator grid startingPosition testObstacles commandFactory|
	startingPosition := Coordinates x:5 y:5.
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	commandFactory := CommandFactory withNavigator: navigator.
	rover:=Rover withCommandFactory: commandFactory.
	rover navigationParameters coordinates: startingPosition.
	rover navigationParameters direction: (SouthDirection  withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '5:3:S'.