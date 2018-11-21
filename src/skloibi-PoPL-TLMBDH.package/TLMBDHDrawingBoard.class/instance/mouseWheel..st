event handling
mouseWheel: e
	"Event handler for scrolling up"
	
	"verify that a model is set"
	model ifNil: [ ^ self ].
	
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