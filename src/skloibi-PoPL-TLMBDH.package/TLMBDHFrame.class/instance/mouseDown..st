dropping/grabbing
mouseDown: e
	"Event handler for when the mouse is clicked"
	|line origin|
	origin := e cursorPoint.
	e redButtonPressed "LMB clicked"
		ifTrue: [
			"Create 'line' at origin"
			line := (LineMorph from: origin to: origin color: Color gray width: 1).
			model startDrawing: line.
			self addMorph: line.
			self changed.
			^ self.
		].
	e yellowButtonPressed
		ifTrue: [
			| undoLine |
			Transcript show: 'RED BUTTON PRESSED'. Transcript cr.
			(undoLine := model undo) 
				ifNotNil: [ 
					self removeMorph: undoLine.
					self changed.
					^ self.
				]
		].