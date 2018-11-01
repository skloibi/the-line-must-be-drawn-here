do/undo
undo
	"Reverts the last drawn line"
	| line |
	undoBuffer ifNotEmpty:
	[
		line := undoBuffer pop.
		redoBuffer push: line.
		^ line.
	].
	^ nil.