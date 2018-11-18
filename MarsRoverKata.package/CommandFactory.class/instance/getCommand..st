Creation
getCommand: commandSymbol
	(commandSymbol = $M)
		ifTrue: [^MovementCommand withNavigator: navigator].
	(commandSymbol = $R)
		ifTrue: [^RightRotationCommand withNavigator: navigator ].
	(commandSymbol = $L)
		ifTrue: [^LeftRotationCommand  withNavigator: navigator ].