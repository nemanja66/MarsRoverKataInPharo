testMovement
testMoveLeftTwoSteps
	|rover position navigator grid startingPosition|
	startingPosition := Coordinates x:5 y:5.
	grid := Grid new.
	navigator := Navigator withGrid: grid.
	rover:=Rover withNavigator: navigator.
	rover coordinates: startingPosition.
	rover direction: (WestDirection withRover: rover).
	position := rover execute: 'MM'.
	self assert: position equals: '3:5:W'.