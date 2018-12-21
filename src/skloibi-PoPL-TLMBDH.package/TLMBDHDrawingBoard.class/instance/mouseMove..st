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
	
	"normalize point"
	currPoint := self normalize: currPoint. 
	
	currLine setVertices: {origin. currPoint}.
	self changed.