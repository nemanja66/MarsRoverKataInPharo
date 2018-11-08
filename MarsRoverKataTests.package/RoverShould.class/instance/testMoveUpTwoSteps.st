testMovement
testMoveUpTwoSteps
	|rover position navigator grid|
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	position := rover execute: 'MM'.
	self assert: position equals: '0:2:N'.