testMovement
testMoveUpOneStep
	|rover position navigator grid testObstacles|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	position := rover execute: 'M'.
	self assert: position equals: '0:1:N'.