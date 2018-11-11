navigation
nextCoordinatesFor: coordinates direction: anDirection rover: aRover
	|nextPossibleCoordinates|
	nextPossibleCoordinates := grid nextCoordinatesFor: coordinates direction: anDirection.
	
	(grid isNextCoordinateAnObstacle: coordinates direction: anDirection)
	ifTrue: [aRover collisionDetected: 'obstacle'. ^nextPossibleCoordinates ]
	ifFalse: [ 
	((collisionStrategies at: anDirection) value: nextPossibleCoordinates)
	ifTrue:[aRover collisionDetected: 'boundary'. ^coordinates]
	ifFalse: [ ^nextPossibleCoordinates ] ]