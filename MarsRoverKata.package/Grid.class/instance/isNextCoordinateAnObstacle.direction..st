position
isNextCoordinateAnObstacle: coordinates direction: aDirection
	|nextCoordinates|
	nextCoordinates := self nextCoordinatesFor: coordinates direction: aDirection.
	^ obstacles includes: nextCoordinates. 