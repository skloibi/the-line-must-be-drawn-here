as yet unclassified
stopEditing
	"Stops editing this line"
	
	p0 ifNil: [ ^ self ].
	p1 ifNil: [ ^ self ].
	
	frame removeMorph: p0.
	frame removeMorph: p1.
	
	p0 := nil.
	p1 := nil.