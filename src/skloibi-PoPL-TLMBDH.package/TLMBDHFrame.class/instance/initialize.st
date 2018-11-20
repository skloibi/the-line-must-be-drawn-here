initialization
initialize
	"Creates a new frame and assigns the layouts and panels"
	super initialize.
	
	"Use ProportionalLayout to resize submorphs"
	self layoutPolicy: ProportionalLayout new.
	self hResizing: #spaceFill.
	model := TLMBDHModel new.
	
	"Initialize the drawing board and set the model"
	drawingBoard := 
		TLMBDHDrawingBoard new
		model: model.
		
	controls := PasteUpMorph new color: Color lightBlue. 
		
	"Add the submorph and position it"
	self
		addMorph: drawingBoard 
		fullFrame: (
			LayoutFrame fractions: (0@0 corner: 1@1)
		).
		
	self
		addMorph: controls
		fullFrame: (
			LayoutFrame
				fractions: (0@1 corner: 0.5@1)
				offsets: (0@0 corner: 0@20 negated)
		).