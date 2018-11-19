construction
withGrid: aGrid
	| commandFactory |
	commandFactory := self new.
	commandFactory grid: aGrid.
	^commandFactory.