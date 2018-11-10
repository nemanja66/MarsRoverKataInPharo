testMovement
testMoveSouth
	|rover position navigator grid startingPosition testObstacles|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	startingPosition := Coordinates x:5 y:5.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover coordinates: startingPosition.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '5:4:S'.