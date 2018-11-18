construction
withNavigator: aNavigator
	| commandFactory |
	commandFactory := self new.
	commandFactory navigator: aNavigator.
	^commandFactory.