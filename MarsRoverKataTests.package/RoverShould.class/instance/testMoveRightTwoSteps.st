testMovement
testMoveRightTwoSteps
	|rover position navigator grid|
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '2:0:E'.