constructor
withCommandFactory: aCommandFactory
| rover |
rover := self new.
rover commandFactory: aCommandFactory.
^rover.
	