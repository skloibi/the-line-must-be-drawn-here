accessing
reducePenWidth
	"Reduces the pen width by 1 (minimum 1)"
	penWidth > 1
		ifTrue: [ penWidth := penWidth - 1 ].
	^ penWidth.