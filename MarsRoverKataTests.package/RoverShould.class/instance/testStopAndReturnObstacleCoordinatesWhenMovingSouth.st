testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingSouth
	|rover position grid obstacle testObstacles startingPosition commandFactory|
	obstacle := Coordinates x:0 y:3.
	startingPosition := Coordinates x:0 y:6.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover coordinates: startingPosition.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '0:3:S'.