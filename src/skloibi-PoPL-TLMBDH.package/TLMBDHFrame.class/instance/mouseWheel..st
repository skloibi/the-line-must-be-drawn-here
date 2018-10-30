event handling
mouseWheel: e
	"Event handler for scrolling up"
	Transcript show: 'WHEEEEEl!'.
	Transcript cr.
	e isDown
		ifTrue: [ Transcript show: 'WHEEL DOWN'. Transcript cr. ]
		ifFalse: [ Transcript show: 'WHEEL UP'. Transcript cr. ].
	self changed.