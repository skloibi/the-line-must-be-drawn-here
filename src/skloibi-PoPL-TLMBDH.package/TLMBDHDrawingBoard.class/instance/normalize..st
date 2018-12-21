accessing
normalize: point
	"Checks whether the drawing is limited to the frame and if so normalizes it"
	limitToFrame
		ifTrue: [ ^ point adhereTo: bounds ].
	
	"otherwise return the same point"
	^ point.