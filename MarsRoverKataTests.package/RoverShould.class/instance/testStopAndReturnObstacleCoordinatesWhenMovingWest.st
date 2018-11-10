testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingWest
	|rover position navigator grid obstacle testObstacles startingPosition|
	obstacle := Coordinates x:3 y:0.
	startingPosition := Coordinates x:6 y:0.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover coordinates: startingPosition.
	rover direction: (WestDirection  withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '3:0:W'.