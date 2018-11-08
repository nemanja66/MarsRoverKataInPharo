testMovement
testMoveSouthTwoSteps
	|rover position grid|
	grid := Grid new.
	rover:=Rover withGrid: grid.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '0:-2:S'.