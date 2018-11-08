movement
execute: commands
|position|
commands do: [
	:each | (each = $M)
 	   ifTrue: [coordinates := grid nextCoordinatesFor: coordinates direction: direction symbol]
		ifFalse:[direction rotate:each]
		].
position := coordinates x asString, ':', coordinates y asString, ':', direction symbol asString.
	^position.