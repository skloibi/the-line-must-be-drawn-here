event handling
mouseMove: e
	| currPoint origin |
	"do nothing unless the left button is clicked"
	e redButtonPressed
		ifFalse: [ ^ self ].
	
	currPoint := e cursorPoint.
	
	currLine
		ifNil: [ ^ self ].
	"if a line is drawn, update the coordinates and notify the parent"
	origin := currLine vertices at: 1.
	"check if points are restricted to view bounds"
	limitToFrame
		"if so, normalize the target point"
		ifTrue: [ currPoint := currPoint adhereTo: bounds ].
	
	currLine setVertices: {origin. currPoint}.
	self changed.