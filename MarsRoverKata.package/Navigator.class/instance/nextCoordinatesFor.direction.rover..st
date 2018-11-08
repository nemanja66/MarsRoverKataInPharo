navigation
nextCoordinatesFor: coordinates direction: anDirection rover: aRover
	|nextPossibleCoordinates|
	nextPossibleCoordinates := grid nextCoordinatesFor: coordinates direction: anDirection.
	((collisionStrategies at: anDirection) value: nextPossibleCoordinates)
	ifTrue:[aRover colissionDetected. ^coordinates]
	ifFalse: [ ^nextPossibleCoordinates ] 