initialization
initialize
	"Creates a new board"
	super initialize.
	color := Color white.
	bounds := 0@0 corner: 500@500.
	self handlesMouseDown: true.