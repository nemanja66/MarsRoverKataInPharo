initialization
initialize
	"comment stating purpose of message"
	northBoundary  := 10.
	eastBoundary   := 10.
	southBoundary  := -1.
	westBoundary   := -1.
	locationStrategies := Dictionary new.
	locationStrategies at: $N put: [ :coordinates | Coordinates x: coordinates x y: coordinates y + 1].
	locationStrategies at: $E put: [ :coordinates | Coordinates x: coordinates x + 1 y: coordinates y].
	locationStrategies at: $S put: [ :coordinates | Coordinates x: coordinates x y: coordinates y - 1].
	locationStrategies at: $W put: [ :coordinates | Coordinates x: coordinates x - 1 y: coordinates y].
	