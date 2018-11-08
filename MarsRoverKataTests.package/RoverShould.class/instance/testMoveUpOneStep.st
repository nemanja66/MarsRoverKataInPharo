testMovement
testMoveUpOneStep
	|rover position grid|
	grid := Grid new.
	rover:=Rover withGrid: grid.
	position := rover execute: 'M'.
	self assert: position equals: '0:1:N'.