testMovement
testMoveLeft
	|rover position grid startingPosition testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	startingPosition := Coordinates x:5 y:5.
	commandFactory := CommandFactory withGrid: grid.
	rover := Rover withCommandFactory: commandFactory.
	rover coordinates: startingPosition.
	rover direction: (WestDirection  withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '4:5:W'.