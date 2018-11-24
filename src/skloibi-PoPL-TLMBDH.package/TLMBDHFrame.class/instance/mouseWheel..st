event handling
mouseWheel: e
	"Event handler for scrolling up"
	
	e isDown
		ifTrue: [ drawingBoard reducePenWidth ]
		ifFalse: [ drawingBoard increasePenWidth ].
	status contents: (drawingBoard penWidth) asString.
	self changed.