testCollisions
testWrapFromWestToEastWhenMovingWestAndHitsWestEdge
	|rover position grid testObstacles commandFactory|
   testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover direction: (WestDirection withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '0:0:E'.