testMovement
testMoveRight
	|rover position grid|
	grid := Grid new.
	rover:=Rover withGrid: grid.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '1:0:E'.