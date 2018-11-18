display
formatPositionOutput: navigationParameters
	^navigationParameters coordinates x asString, ':', navigationParameters coordinates y asString, ':', navigationParameters direction symbol asString.