instance creation
fromHexString: hexString
	"Similar to `Color#fromHexString` this method parses the given string but returns `Color#black` if the string is not a valid hex denoting a color"
	^ [ Color fromHexString: hexString ] 
		on: SubscriptOutOfBounds 
		do: [(Color black)].