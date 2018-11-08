initialization
initialize
	"comment stating purpose of message"
	maxHeight := 10.
	maxWidth  := 10.
	minHeight := 0.
	minWidth  :=0.
	locationStrategies := Dictionary new.
	locationStrategies at: $N put: [ :coordinates | Coordinates x: coordinates x y: coordinates y + 1].
	locationStrategies at: $E put: [ :coordinates | Coordinates x: coordinates x + 1 y: coordinates y].
	locationStrategies at: $S put: [ :coordinates | Coordinates x: coordinates x y: coordinates y - 1].
	locationStrategies at: $W put: [ :coordinates | Coordinates x: coordinates x - 1 y: coordinates y].
	