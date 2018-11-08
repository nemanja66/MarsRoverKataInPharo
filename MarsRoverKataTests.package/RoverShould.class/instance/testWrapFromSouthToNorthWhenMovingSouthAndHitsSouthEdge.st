testCollisions
testWrapFromSouthToNorthWhenMovingSouthAndHitsSouthEdge
	|rover position navigator grid|
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '0:0:N'.