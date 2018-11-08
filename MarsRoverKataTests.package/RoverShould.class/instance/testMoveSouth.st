testMovement
testMoveSouth
	|rover position grid|
	grid := Grid new.
	rover:=Rover withGrid: grid.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '0:-1:S'.