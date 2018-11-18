testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingNorth
	|rover position navigator grid obstacle testObstacles commandFactory|
	obstacle := Coordinates x:0 y:3.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	commandFactory := CommandFactory withNavigator: navigator.
	rover:=Rover withCommandFactory: commandFactory.
	rover navigationParameters direction: (NorthDirection  withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '0:3:N'.