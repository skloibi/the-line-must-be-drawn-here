do/undo
redo
	"Goes forward in the action history"
	| line |
	redoBuffer ifNotEmpty:
	[
		line := redoBuffer pop.
		undoBuffer push: line.
		^ line.
	].
	^ nil.