rotation
rotate: side
	(side = $L)
	ifTrue: [ rover direction: (WestDirection withRover: rover) ].
	(side = $R)
	ifTrue: [rover direction: (EastDirection withRover: rover) ].