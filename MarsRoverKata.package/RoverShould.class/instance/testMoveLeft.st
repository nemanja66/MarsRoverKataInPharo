testMovement
testMoveLeft
	|rover position grid|
	grid := Grid new.
	rover:=Rover withGrid: grid.
	rover direction: (WestDirection withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '-1:0:W'.