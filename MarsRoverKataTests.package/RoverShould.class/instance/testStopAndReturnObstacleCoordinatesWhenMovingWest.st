testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingWest
	|rover position grid obstacle testObstacles startingPosition commandFactory|
	obstacle := Coordinates x:3 y:0.
	startingPosition := Coordinates x:6 y:0.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover coordinates: startingPosition.
	rover direction: (WestDirection  withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '3:0:W'.