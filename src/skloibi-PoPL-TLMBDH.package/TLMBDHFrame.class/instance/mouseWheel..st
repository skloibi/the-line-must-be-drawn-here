event handling
mouseWheel: e
	"Event handler for scrolling up"
	
	e isDown
		ifTrue: [
			model pencilWidth > 1
				ifTrue: [ 
					model pencilWidth: (model pencilWidth - 1).
					status contents: (model pencilWidth) asString.
					self changed. 
				]
			"| undoLine |
			(undoLine := model undo) 
				ifNotNil: [ 
					self removeMorph: undoLine.
					self changed.
					^ self.
				]"
		]
		ifFalse: [
			model pencilWidth: (model pencilWidth + 1).
			status contents: (model pencilWidth) asString.
			self changed.
			"| redoLine |
			(redoLine := model redo) 
				ifNotNil: [ 
					self addMorph: redoLine.
					self changed.
					^ self.
				]"
		].