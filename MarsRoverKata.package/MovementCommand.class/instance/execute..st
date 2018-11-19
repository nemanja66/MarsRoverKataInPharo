commandExecution
execute: aRover
	|nextPossibleCoordinates|
	nextPossibleCoordinates := grid nextCoordinatesFor: aRover coordinates  direction: aRover direction symbol.
	
	(grid isCoordinateAnObstacle: nextPossibleCoordinates)
	ifTrue: [aRover collisionDetected: 'obstacle'. aRover coordinates: nextPossibleCoordinates ]
	ifFalse: [ 
	((collisionStrategies at: aRover direction symbol ) value: nextPossibleCoordinates)
	ifTrue:[aRover collisionDetected: 'boundary'.]
	ifFalse: [ aRover coordinates: nextPossibleCoordinates ] ]