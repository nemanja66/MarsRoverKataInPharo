testCollisions
testWrapFromSouthToNorthWhenMovingSouthAndHitsSouthEdge
	|rover position navigator grid testObstacles|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (SouthDirection  withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '0:0:N'.