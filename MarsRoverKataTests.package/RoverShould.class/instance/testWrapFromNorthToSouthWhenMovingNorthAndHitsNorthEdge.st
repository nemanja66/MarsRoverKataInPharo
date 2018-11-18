testCollisions
testWrapFromNorthToSouthWhenMovingNorthAndHitsNorthEdge
	|rover position navigator grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	commandFactory := CommandFactory withNavigator: navigator.
	rover:=Rover withCommandFactory: commandFactory.
	rover navigationParameters direction: (NorthDirection  withRover: rover).
	position := rover execute: 'MMMMMMMMMM'.
	self assert: position equals: '0:9:S'.