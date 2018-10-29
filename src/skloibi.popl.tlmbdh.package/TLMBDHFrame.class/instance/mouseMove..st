event handling
mouseMove: e
	| currPoint line |
	currPoint := e cursorPoint.
	model isDrawing
		ifFalse: [ ^ self ].
	"if a line is drawn, update the coordinates and notify the parent"
	line := model currLine.
	line setVertices: {line vertices at: 1. currPoint}.
	self changed.