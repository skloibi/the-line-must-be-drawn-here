event handling
mouseUp: e
	e redButtonChanged
		ifFalse: [ ^ self ].
	"do nothing if no model is set"
	model ifNil: [ ^ self ].
		
	currLine
		ifNil: [ ^ self ].
	currLine borderColor: penColor.
	model confirmLine: currLine.
	"Signal end of drawing by unsetting the current line"
	currLine := nil.
	self changed.