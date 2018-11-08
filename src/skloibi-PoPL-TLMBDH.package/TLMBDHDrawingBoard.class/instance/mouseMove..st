event handling
mouseMove: e
	| currPoint line origin |
	"do nothing unless the left button is clicked"
	e redButtonPressed
		ifFalse: [ ^ self ].
	
	currPoint := e cursorPoint.
	model isDrawing
		ifFalse: [ ^ self ].
	"if a line is drawn, update the coordinates and notify the parent"
	line := model currLine.
	origin := line vertices at: 1.
	"check if points are restricted to view bounds"
	model isDelimited 
		"if so, normalize the target point"
		ifTrue: [ currPoint := currPoint adhereTo: bounds ].
	
	line setVertices: {origin. currPoint}.
	self changed.