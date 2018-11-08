rotation
rotate: side
	(side = $L)
	ifTrue: [ rover direction: (NorthDirection withRover: rover)].
	(side = $R)
	ifTrue: [rover direction: (SouthDirection withRover: rover) ].
	