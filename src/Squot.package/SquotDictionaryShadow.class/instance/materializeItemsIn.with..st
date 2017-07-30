as yet unclassified
materializeItemsIn: aDictionary with: aMaterializer
	| materializedAssociations |
	materializedAssociations := Array streamContents: [:stream |
		itemSlots do: [:each | stream nextPut:
			(each materializeIn: aDictionary with: aMaterializer)]].
	(aDictionary associations copyWithoutAll: materializedAssociations)
		do: [:each | aDictionary removeKey: each key].