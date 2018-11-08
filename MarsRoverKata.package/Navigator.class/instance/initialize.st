initialization
initialize
	collisionStrategies := Dictionary new.

	collisionStrategies at: $N put: [ :coordinates | (coordinates y = grid northBoundary) ].
	collisionStrategies at: $E put: [ :coordinates | (coordinates x = grid eastBoundary) ].
	collisionStrategies at: $S put: [ :coordinates | (coordinates y = grid southBoundary) ].
	collisionStrategies at: $W put: [ :coordinates | (coordinates x = grid westBoundary) ].