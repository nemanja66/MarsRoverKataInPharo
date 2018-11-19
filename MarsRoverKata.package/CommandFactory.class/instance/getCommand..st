factory methods
getCommand: commandSymbol
	(commandSymbol = $M)
		ifTrue: [^MovementCommand withGrid: grid].
	(commandSymbol = $R)
		ifTrue: [^RightRotationCommand new].
	(commandSymbol = $L)
		ifTrue: [^LeftRotationCommand new].