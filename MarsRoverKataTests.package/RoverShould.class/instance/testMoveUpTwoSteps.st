testMovement
testMoveUpTwoSteps
	|rover position navigator grid testObstacles|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	position := rover execute: 'MM'.
	self assert: position equals: '0:2:N'.