rotation
rotate: side
	(side = $L)
	ifTrue: [ rover direction: (SouthDirection  withRover: rover) ].
	(side = $R)
	ifTrue: [rover direction: (NorthDirection  withRover: rover) ].