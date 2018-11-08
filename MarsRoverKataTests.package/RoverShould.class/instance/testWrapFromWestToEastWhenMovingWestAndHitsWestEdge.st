testCollisions
testWrapFromWestToEastWhenMovingWestAndHitsWestEdge
	|rover position navigator grid|
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (WestDirection withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '0:0:E'.