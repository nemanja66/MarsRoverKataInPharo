construction
withNavigator: aNavigator
	| movementCommand |
	movementCommand := self new.
	movementCommand navigator: aNavigator.
	^movementCommand.