construction
withNavigator: aNavigator
	| rightRotationCommand |
	rightRotationCommand := self new.
	rightRotationCommand navigator: aNavigator.
	^rightRotationCommand.