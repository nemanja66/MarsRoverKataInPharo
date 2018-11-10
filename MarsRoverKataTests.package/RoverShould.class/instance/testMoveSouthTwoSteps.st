testMovement
testMoveSouthTwoSteps
	|rover position navigator grid startingPosition testObstacles|
	startingPosition := Coordinates x:5 y:5.
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover coordinates: startingPosition.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '5:3:S'.