initialization
initialize
	"Initializes the model with the given properties"
	isDrawing := false.
	isDelimited := true.
	undoBuffer := Stack new.
	redoBuffer := Stack new.