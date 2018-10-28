dropping/grabbing
mouseDown: e
	"Event handler for when the mouse is clicked"
	|line origin|
	origin := e cursorPoint.
	e redButtonPressed "LMB clicked"
		ifTrue: [
			|handle|
			"Create 'line' at origin"
			line := (LineMorph from: origin to: origin color: Color gray width: 1).
			self addMorph: line.
			"Create event handler that monitors mouse movement"
			handle := HandleMorph new 
				forEachPointDo: [ :p | line setVertices: {origin. p} ]
				lastPointDo: [ :p | line borderColor: Color black. line setVertices: {origin. p} ].
			"Add handle"
			self currentHand attachMorph: handle.
		].
	self changed.