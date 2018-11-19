testCollisions
testWrapFromEastToWestWhenMovingEastAndHitsEastEdge
	|rover position grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'MMMMMMMMMM'.
	self assert: position equals: '9:0:W'.