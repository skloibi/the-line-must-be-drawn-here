do/undo
redo
	"Goes forward in the action history"
	| line |
	Transcript show: 'UndoBuffer: '.
	Transcript show: undoBuffer size.
	Transcript cr.
	Transcript show: 'RedoBuffer: '.
	Transcript show: redoBuffer size.
	Transcript cr.
	redoBuffer ifNotEmpty:
	[
		line := redoBuffer pop.
		undoBuffer push: line.
		^ line.
	]