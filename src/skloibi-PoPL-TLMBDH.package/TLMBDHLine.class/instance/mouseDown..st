event handling
mouseDown: e
	"On mouse down, the move points are displayed"
	| begin end |
	e yellowButtonPressed
		ifFalse: [ ^ self ].	"RMB clicked"
	
	"Set edited line"
	frame editLine: self.
	
	begin := vertices at: 1.
	end := vertices at: 2.
	
	"Create the points and set the movement handlers"
	p0 := TLMBDHLinePoint at: begin 
								do: [ :p |
									p0 setVertices: { frame normalize: p }.
									self setVertices: { p0 point. vertices at: 2 }.
								].
	p1 := TLMBDHLinePoint at: end 
								do: [ :p |
									p1 setVertices: { frame normalize: p }. 
									self setVertices: { vertices at: 1. p1 point }.
								].
		
	frame addMorph: p0.
	frame addMorph: p1.