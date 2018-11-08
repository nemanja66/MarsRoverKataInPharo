position
nextCoordinatesFor: coordinates direction: anDirection
	^(locationStrategies at: anDirection) value: coordinates.
	