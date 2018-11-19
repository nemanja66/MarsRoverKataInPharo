movement
execute: commands
|command|
commands do: [
	:each | (stop) ifFalse:[
	command := commandFactory getCommand: each.
	command execute: self]].
	^self formatPositionOutput: coordinates direction: direction.