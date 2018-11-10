movement
collisionDetected: typeOfCollision
	(typeOfCollision = 'obstacle')
	ifTrue: [self stop: true]
	ifFalse: [self execute: 'RR'].