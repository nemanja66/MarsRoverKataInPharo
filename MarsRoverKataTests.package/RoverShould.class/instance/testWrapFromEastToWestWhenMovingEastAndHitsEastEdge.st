testCollisions
testWrapFromEastToWestWhenMovingEastAndHitsEastEdge
	|rover position navigator grid testObstacles|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'MMMMMMMMMM'.
	self assert: position equals: '9:0:W'.