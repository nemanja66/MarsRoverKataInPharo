testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingEast
	|rover position grid obstacle testObstacles commandFactory|
	obstacle := Coordinates x:2 y:0.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	commandFactory:= CommandFactory withGrid: grid.
	rover := Rover withCommandFactory: commandFactory.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '2:0:E'.