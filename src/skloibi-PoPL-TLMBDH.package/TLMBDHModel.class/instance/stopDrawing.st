accessing
stopDrawing
	isDrawing := false.
	undoBuffer push: currLine.
	currLine := nil.