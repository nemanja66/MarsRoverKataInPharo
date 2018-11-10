movement
execute: commands
|position|
commands do: [
	:each | (stop)
	ifFalse:[
	(each = $M)
 	   ifTrue: [coordinates := navigator nextCoordinatesFor: coordinates direction: direction symbol rover: self]
		ifFalse:[direction rotate:each]
		]].
position := coordinates x asString, ':', coordinates y asString, ':', direction symbol asString.
	^position.