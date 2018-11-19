testMovement
testMoveUpOneStep
	|rover position grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	position := rover execute: 'M'.
	self assert: position equals: '0:1:N'.