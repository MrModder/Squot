configuring
defaultApplyBlock
	^ [:this :target |
	SquotArtifactContentMock new
		id: 'generated by ', this id printString, ' applied to ', target id printString]