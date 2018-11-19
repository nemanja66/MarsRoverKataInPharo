testMovement
testMoveSouthTwoSteps
	|rover position grid startingPosition testObstacles commandFactory|
	startingPosition := Coordinates x:5 y:5.
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover coordinates: startingPosition.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '5:3:S'.