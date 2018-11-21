event handling
mouseUp: e
	e redButtonChanged
		ifFalse: [ ^ self ].
	"do nothing if no model if set"
	model ifNil: [ ^ self ].
		
	model isDrawing
		ifFalse: [ ^ self ].
	model currLine borderColor: Color black.
	model stopDrawing.
	self changed.