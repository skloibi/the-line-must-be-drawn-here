initialization
initialize
	"Creates a new frame and assigns the layouts and panels"
	| controls |
	super initialize.
	
	"Use ProportionalLayout to automatically resize / scale submorphs"
	self layoutPolicy: ProportionalLayout new.
	self hResizing: #spaceFill.
	model := TLMBDHModel new
		delimited: true.
	
	"Initialize the drawing board and set the model"
	drawingBoard := 
		TLMBDHDrawingBoard new
		model: model.
		
	"Initalize the controls"
	controls := AlignmentMorph new 
		listDirection: #leftToRight;
		color: Color transparent.

	"Add button to undo last line"
	controls addMorphBack: (
		SimpleButtonMorph new
			target: self;
			label: '<';
			actionSelector: #undoLastLine
	).
	
	"Add button to redo last deleted line"
	controls addMorphBack: (
		SimpleButtonMorph new
			target: self;
			label: '>';
			actionSelector: #redoLastLine
	).
	
	"Add the submorph and position it"
	self
		addMorph: drawingBoard 
		fullFrame: (
			LayoutFrame fractions: (0@0 corner: 1@1)
		).
		
	"Add the control morph and position it"
	self
		addMorph: controls
		fullFrame: (
			LayoutFrame
				fractions: (0@1 corner: 1@1)
				offsets: (0@0 corner: 0@20 negated)
		).