initialization
initialize
	"Creates a new board"
	super initialize.
	color := Color white.
	bounds := 0@0 corner: 500@500.
	model := TLMBDHModel new.
	"Specify handled events"
	self handlesMouseDown: true.
	self handlesMouseWheel: true.