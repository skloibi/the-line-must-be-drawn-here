do/undo
undo
	"Reverts the last drawn line"
	| line |
	Transcript show: 'UndoBuffer: '.
	Transcript show: undoBuffer size.
	Transcript cr.
	Transcript show: 'RedoBuffer: '.
	Transcript show: redoBuffer size.
	Transcript cr.
	undoBuffer ifNotEmpty:
	[
		line := undoBuffer pop.
		redoBuffer push: line.
		^ line.
	].
	^ nil.