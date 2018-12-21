initialization
initialize: a
	"Creates a toggle button for the given action"
	self initialize.
	self target: nil;
			label: 'limit';
			actionSelector: #value.
	action := a.