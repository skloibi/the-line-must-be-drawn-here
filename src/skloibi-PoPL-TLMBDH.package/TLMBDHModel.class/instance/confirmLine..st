accessing
confirmLine: line
	"Accepts the given line and stores it in the undo buffer"
	undoBuffer push: line.