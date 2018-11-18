testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingEast
	|rover position navigator grid obstacle testObstacles commandFactory|
	obstacle := Coordinates x:2 y:0.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	commandFactory:= CommandFactory withNavigator: navigator.
	rover := Rover withCommandFactory: commandFactory.
	rover navigationParameters direction: (EastDirection withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '2:0:E'.