testCollisions
testWrapFromNorthToSouthWhenMovingNorthAndHitsNorthEdge
	|rover position navigator grid|
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (NorthDirection  withRover: rover).
	position := rover execute: 'MMMMMMMMMM'.
	self assert: position equals: '0:9:S'.