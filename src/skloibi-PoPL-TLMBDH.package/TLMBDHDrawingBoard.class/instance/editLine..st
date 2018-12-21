accessing
editLine: l
	"Sets the currently edited line"
	
	"Skip any other editing"
	editedLine 
		ifNotNil: [ editedLine stopEditing ].
	editedLine := l.