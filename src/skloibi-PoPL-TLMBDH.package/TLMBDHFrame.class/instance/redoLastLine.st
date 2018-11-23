drawing
redoLastLine
	"Reverts the last deleted line and removes it from the redo buffer"
	| redoLine |
	(redoLine := model redo)
		ifNotNil: [
			drawingBoard addMorph: redoLine.
			drawingBoard changed.
		].