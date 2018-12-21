instance creation
from: origin to: target width: penWidth frame: frame
	"Creates a new line with the given bounds and keeps a reference to the container frame"
	| instance |
	instance := self from: origin to: target color: Color lightGray width: penWidth.
	instance frame: frame.
	^ instance.