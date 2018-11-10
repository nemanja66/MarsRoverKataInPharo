testObstacles
testStopAndReturnObstacleCoordinatesWhenMovingSouth
	|rover position navigator grid obstacle testObstacles startingPosition|
	obstacle := Coordinates x:0 y:3.
	startingPosition := Coordinates x:0 y:6.
	testObstacles := Set new.
	testObstacles add: obstacle.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover coordinates: startingPosition.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'MMMMM'.
	self assert: position equals: '0:3:S'.