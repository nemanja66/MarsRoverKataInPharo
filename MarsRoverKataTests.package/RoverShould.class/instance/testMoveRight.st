testMovement
testMoveRight
	|rover position grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'M'.
	self assert: position equals: '1:0:E'.