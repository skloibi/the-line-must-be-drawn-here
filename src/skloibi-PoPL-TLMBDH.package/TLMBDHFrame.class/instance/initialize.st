initialization
initialize
	"Creates a new frame and assigns the layouts and panels"
	super initialize.
	self layoutPolicy: ProportionalLayout new.
	self addMorph: TLMBDHDrawingBoard new fullFrame: (LayoutFrame fractions: (0@0 corner: 1 @ 1) offsets: nil).
	bounds := 0@0 corner: 500@500.