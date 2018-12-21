dropping/grabbing
mouseDown: e
	"Event handler for when the mouse is clicked"
	| origin |
	
	"Stop any editing"
	editedLine ifNotNil: [ editedLine stopEditing ].
	
	origin := e cursorPoint.
	e redButtonPressed
		ifFalse: [ ^ self ].	"LMB clicked"

	"Create 'line' at origin"
	self
		addMorph:
			(currLine := TLMBDHLine
				from: origin
				to: origin
				width: penWidth
				frame: self).
	self changed.
	^ self