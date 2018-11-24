dropping/grabbing
mouseDown: e
	"Event handler for when the mouse is clicked"
	|origin|
	
	origin := e cursorPoint.
	e redButtonPressed "LMB clicked"
		ifFalse: [ ^self ].

	"Create 'line' at origin"
	self addMorph: (
		currLine := (TLMBDHLine from: origin to: origin color: Color lightGray width: penWidth)
	).
	self changed.
	^ self.