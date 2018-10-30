event handling
mouseUp: e
	e redButtonChanged
		ifFalse: [ ^ self ].
	Transcript show: 'RED BUTTON RELEASED'.
	Transcript cr.
	model isDrawing
		ifFalse: [ ^ self ].
	model currLine borderColor: Color black.
	self changed.