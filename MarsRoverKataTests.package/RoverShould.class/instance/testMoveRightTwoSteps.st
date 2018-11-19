testMovement
testMoveRightTwoSteps
	|rover position grid testObstacles commandFactory|
	testObstacles := Set new.
	grid := Grid withObstacles: testObstacles.
	commandFactory := CommandFactory withGrid: grid.
	rover:=Rover withCommandFactory: commandFactory.
	rover direction: (EastDirection withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '2:0:E'.