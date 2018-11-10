testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingNorth
	|rover position navigator grid obstacle testObstacles|
	obstacle := Coordinates x:0 y:3.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (NorthDirection  withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '0:3:N'.