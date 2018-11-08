testMovement
testMoveUpTwoSteps
	|rover position grid|
	grid := Grid new.
	rover:=Rover withGrid: grid.
	position := rover execute: 'MM'.
	self assert: position equals: '0:2:N'.