construction
withGrid: aGrid
	| movementCommand |
	movementCommand := self new.
	movementCommand grid: aGrid.
	^movementCommand.