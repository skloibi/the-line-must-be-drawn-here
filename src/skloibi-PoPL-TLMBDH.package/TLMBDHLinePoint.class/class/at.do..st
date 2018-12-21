accessing
at: point do: moveLine
	"Creates a point at the given location"
	| instance |
	instance := self vertices: {point} color: Color white borderWidth: 7 borderColor: Color green.
	instance moveLinePointTo: moveLine.
	^ instance.