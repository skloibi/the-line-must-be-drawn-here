event handling
mouseWheel: e
	"Event handler for scrolling up"
	e isDown
		ifTrue: [
			| undoLine |
			(undoLine := model undo) 
				ifNotNil: [ 
					self removeMorph: undoLine.
					self changed.
					^ self.
				]
		]
		ifFalse: [
			| redoLine |
			(redoLine := model redo) 
				ifNotNil: [ 
					self addMorph: redoLine.
					self changed.
					^ self.
				]
		].