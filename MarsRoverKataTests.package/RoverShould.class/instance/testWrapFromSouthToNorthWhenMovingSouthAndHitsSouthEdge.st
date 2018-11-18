testCollisions
testWrapFromSouthToNorthWhenMovingSouthAndHitsSouthEdge
	|rover position navigator grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	commandFactory := CommandFactory withNavigator: navigator.
	rover:=Rover withCommandFactory: commandFactory.
	rover navigationParameters direction: (SouthDirection  withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '0:0:N'.