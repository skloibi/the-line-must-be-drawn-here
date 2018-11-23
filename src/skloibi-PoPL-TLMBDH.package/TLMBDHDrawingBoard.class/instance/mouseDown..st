dropping/grabbing
mouseDown: e
	"Event handler for when the mouse is clicked"
	|line origin|
	
	"check that model is set"
	model ifNil: [ ^ self ].
	
	origin := e cursorPoint.
	e redButtonPressed "LMB clicked"
		ifTrue: [
			"Create 'line' at origin"
			line := (TLMBDHLine from: origin to: origin color: Color gray width: model pencilWidth).
			model startDrawing: line.
			self addMorph: line.
			self changed.
			^ self.
		].