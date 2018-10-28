dropping/grabbing
mouseDown: e
	| line origin |
	"Handles mouse down events"
	e redButtonPressed "LMB click"
		ifTrue: [
			| handle |
			"capture click origin"
			origin := e cursorPoint.
			"create 'line' on point"
			line := (LineMorph from: origin to: origin color: Color gray width: 1).
			self addMorph: line.
			"handler that captures the mouse until clicking" "TODO switch to trigger on mouse release"
			handle := HandleMorph new
				forEachPointDo: [ :p | line setVertices: {origin. p} ] 
				lastPointDo: [ :p | line borderColor: Color black. line setVertices: {origin. p} ].
			self currentHand attachMorph: handle. 
		].
	self changed. "notify parent"