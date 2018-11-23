initialization
initialize
	"Initializes the model with the given properties"
	isDrawing := false.
	isDelimited := true.
	pencilWidth := 1.
	undoBuffer := Stack new.
	redoBuffer := Stack new.