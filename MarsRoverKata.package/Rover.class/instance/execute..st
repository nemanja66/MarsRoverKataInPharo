movement
execute: commands
commands do: [
	:each | (stop) ifTrue:[^self formatPositionOutput: coordinates direction: direction].
	(each = $M) ifTrue: [coordinates := navigator nextCoordinatesFor: coordinates direction: direction symbol rover: self].
   (each = $R) ifTrue: [direction rotate:each].
	(each = $L) ifTrue: [direction rotate:each]].
	^self formatPositionOutput: coordinates direction: direction