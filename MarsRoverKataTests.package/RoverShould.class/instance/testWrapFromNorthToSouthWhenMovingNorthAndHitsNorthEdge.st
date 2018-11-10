testCollisions
testWrapFromNorthToSouthWhenMovingNorthAndHitsNorthEdge
	|rover position navigator grid testObstacles|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (NorthDirection  withRover: rover).
	position := rover execute: 'MMMMMMMMMM'.
	self assert: position equals: '0:9:S'.