testMovement
testMoveUpOneStep
	|rover position navigator grid|
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	position := rover execute: 'M'.
	self assert: position equals: '0:1:N'.