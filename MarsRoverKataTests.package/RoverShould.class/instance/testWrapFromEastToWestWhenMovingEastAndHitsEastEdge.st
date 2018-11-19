testCollisions
testWrapFromEastToWestWhenMovingEastAndHitsEastEdge
	|rover position navigator grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	commandFactory := CommandFactory withNavigator: navigator.
	rover:=Rover withCommandFactory: commandFactory.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'MMMMMMMMMM'.
	self assert: position equals: '9:0:W'.