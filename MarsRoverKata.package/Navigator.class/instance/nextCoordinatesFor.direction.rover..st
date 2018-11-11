navigation
nextCoordinatesFor: coordinates direction: anDirection rover: aRover
	|nextPossibleCoordinates|
	nextPossibleCoordinates := grid nextCoordinatesFor: coordinates direction: anDirection.
	
	(grid isCoordinateAnObstacle: nextPossibleCoordinates)
	ifTrue: [aRover collisionDetected: 'obstacle'. ^nextPossibleCoordinates ]
	ifFalse: [ 
	((collisionStrategies at: anDirection) value: nextPossibleCoordinates)
	ifTrue:[aRover collisionDetected: 'boundary'. ^coordinates]
	ifFalse: [ ^nextPossibleCoordinates ] ]