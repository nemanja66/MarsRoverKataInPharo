testMovement
testMoveRightTwoSteps
	|rover position grid|
	grid := Grid new.
	rover:=Rover withGrid: grid.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '2:0:E'.