movement
collisionDetected: typeOfCollision
	(typeOfCollision = 'obstacle') ifTrue: [self stop: true].
	(typeOfCollision = 'boundary') ifTrue: [self execute: 'RR'].