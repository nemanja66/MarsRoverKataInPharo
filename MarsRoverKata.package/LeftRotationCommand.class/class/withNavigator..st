construction
withNavigator: aNavigator
	| leftRotationCommand |
	leftRotationCommand := self new.
	leftRotationCommand navigator: aNavigator.
	^leftRotationCommand.