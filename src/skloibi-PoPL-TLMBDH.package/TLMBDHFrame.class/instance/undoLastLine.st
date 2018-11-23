drawing
undoLastLine
	"Deletes the last drawn line and puts it into the redo buffer"
	| undoLine |
	(undoLine := model undo) 
		ifNotNil: [ 
			drawingBoard removeMorph: undoLine.
			drawingBoard changed.
		].
	