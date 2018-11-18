initialization
initialize
	"initialization of rover"
	stop := false.
	navigationParameters := NavigationParameters new.
	navigationParameters direction: (NorthDirection withRover: self).
	navigationParameters coordinates: (Coordinates x:0 y:0).