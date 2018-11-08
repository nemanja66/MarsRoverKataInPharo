testMovement
testMoveLeftTwoSteps
	|rover position navigator grid|
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (WestDirection withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '-2:0:W'.