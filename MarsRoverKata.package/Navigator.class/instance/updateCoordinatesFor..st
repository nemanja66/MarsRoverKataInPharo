navigation
updateCoordinatesFor: aRover
	|nextPossibleCoordinates _coordinates _directionSymbol|
	_coordinates := aRover navigationParameters coordinates.
	_directionSymbol := aRover navigationParameters direction symbol.
	nextPossibleCoordinates := grid nextCoordinatesFor: _coordinates  direction: _directionSymbol.
	
	(grid isCoordinateAnObstacle: nextPossibleCoordinates)
	ifTrue: [aRover collisionDetected: 'obstacle'. aRover navigationParameters coordinates: nextPossibleCoordinates ]
	ifFalse: [ 
	((collisionStrategies at: _directionSymbol ) value: nextPossibleCoordinates)
	ifTrue:[aRover collisionDetected: 'boundary'.]
	ifFalse: [ aRover navigationParameters coordinates: nextPossibleCoordinates ] ]