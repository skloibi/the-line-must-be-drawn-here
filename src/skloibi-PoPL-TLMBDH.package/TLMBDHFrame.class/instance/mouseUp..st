event handling
mouseUp: e
	e redButtonChanged
		ifFalse: [ ^ self ].
	model isDrawing
		ifFalse: [ ^ self ].
	model currLine borderColor: Color black.
	model stopDrawing.
	self changed.