public-accessing-references
followSymbolicRef: symbolicRefFileReference
	| target |
	self privateDeprecatedUseUnitOfWork.
	symbolicRefFileReference exists
		ifFalse: [FileDoesNotExist signalWith: symbolicRefFileReference].
	target := symbolicRefFileReference readStreamDo: [ :stream | stream contents asString ].
	(target beginsWith: 'ref:') 
		ifTrue: [^ (target allButFirst: 4) withBlanksTrimmed].
	self error: 'Not a symbolic reference: ', symbolicRefFileReference basename