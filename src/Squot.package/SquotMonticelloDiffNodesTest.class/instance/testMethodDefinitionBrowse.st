tests
testMethodDefinitionBrowse
	"when"
	SquotFakeToolSet installDuring: 
		[(self rootNode withAllChildren detect: [:each | each title includesSubstring: existingMethod selector caseSensitive: true]) browseInWorkingCopy].
	"then"
	self assert: (SquotFakeToolSet didBrowseMethod: existingMethod).