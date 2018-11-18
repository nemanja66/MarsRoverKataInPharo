movement
execute: commands
|command|
commands do: [
	:each | (stop) ifTrue:[^self formatPositionOutput: navigationParameters].
	command := commandFactory getCommand: each.
	command execute: self].
	^self formatPositionOutput: navigationParameters.