initialization
initialize
	"initialization of rover"
	stop := false.
   direction := (NorthDirection withRover: self).
	coordinates := (Coordinates x:0 y:0).