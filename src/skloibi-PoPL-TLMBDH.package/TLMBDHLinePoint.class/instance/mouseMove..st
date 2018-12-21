event handling
mouseMove: e
	"Captures mouse movement"
	
	"do nothing if point is not clicked"
	moving ifNil: [ ^ self ].
	moving ifFalse: [ ^ self ].
	moveLinePointTo value: (e cursorPoint).
	
	