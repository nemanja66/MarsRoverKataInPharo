testMovement
testMoveSouth
	|rover position navigator grid startingPosition|
	startingPosition := Coordinates x:5 y:5.
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover coordinates: startingPosition.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '5:4:S'.