rotation
rotate: side
	(side = $L)
	ifTrue: [ rover direction: (EastDirection withRover: rover) ].
	(side = $R)
	ifTrue: [rover direction: (WestDirection withRover: rover) ].