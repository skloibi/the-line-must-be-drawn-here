initialization
doButtonAction
	"Perform the action of this button"
	super doButtonAction.
	action ifNotNil: [ action value ].