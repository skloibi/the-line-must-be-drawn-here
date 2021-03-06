initialization
initialize
	"Creates a new frame and assigns the layouts and panels"
	| controls colorInput |
	super initialize.
	
	"Use ProportionalLayout to automatically resize / scale submorphs"
	self layoutPolicy: ProportionalLayout new.
	self hResizing: #spaceFill.
	model := TLMBDHModel new.
	
	"Initialize the drawing board and set the model"
	drawingBoard := 
		TLMBDHDrawingBoard new
		model: model.
		
	"Initalize the controls"
	controls := Morph new
		layoutPolicy: RowLayout new; 
		color: Color transparent;
		cellInset: 5.

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
	
	controls addMorphBack: (
		(StringMorph contents: 'Pencil width:'
  			font: (StrikeFont familyName: 'Bitmap DejaVu Sans' size: 9))
			color: Color black
	).
	
	"Add dynamic status display"
	controls addMorphBack: (
		status := (
		(StringMorph contents: (drawingBoard penWidth) asString
  			font: (StrikeFont familyName: 'Bitmap DejaVu Sans' size: 9))
			color: Color black
		)
	).
	
	"Add color palette"
	{ Color black. Color blue. Color red. Color yellow. Color green } do:
		[ :c |
			controls addMorphBack: (
				SimpleButtonMorph new
					target: [ drawingBoard penColor: c ];
					label: '';
					actionSelector: #value;
					color: c 
			)
		].

	"Add button to delimit / unlimit drawing"
	controls addMorphBack: (
		TLMBDHToggleButton new action: [ drawingBoard toggleLimitToFrame ]
	).
	
	"Add a color input field"
	colorInput := 
		TextMorph new
		contents: '000000';
		color: Color black.
	
	controls addMorphBack: colorInput.
	
	controls addMorphBack: (
		SimpleButtonMorph new
			target: [
				| newColor |
				newColor := TLMBDHSafeColor fromHexString: (colorInput contents asString).
				drawingBoard penColor: newColor.
				colorInput contents: (newColor asHexString).
			];
			label: 'Select color';
			actionSelector: #value 
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