testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingNorth
	|rover position grid obstacle testObstacles commandFactory|
	obstacle := Coordinates x:0 y:3.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover direction: (NorthDirection  withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '0:3:N'.