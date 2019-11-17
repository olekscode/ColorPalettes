Class {
	#name : #ColorPalette,
	#superclass : #OrderedCollection,
	#category : #ColorPalettes
}

{ #category : #'instance creation' }
ColorPalette class >> new [
	"Ordered Collection class >> new does not send self new initialize. So we send it from here"
	^ super new initialize
]

{ #category : #'as yet unclassified' }
ColorPalette class >> withColors: aCollectionOfColors [
	^ self withAll: aCollectionOfColors
]

{ #category : #'gt-inspector-extension' }
ColorPalette >> gtInspectorColorsIn: composite [
	<gtInspectorPresentationOrder: 0>

	^ composite fastTable
		title: 'Colors';
		display: [ self ];
		beMultiple;
		enableElementIndex;
		wantsAutomaticRefresh: true;
		column: 'Index' evaluated: [ :color :idex | idex asString ] width: 50;
		column: 'Color' evaluated: [ :color | BorderedMorph new color: color ] width: 52;
		column: 'Code' evaluated: [ :color | GTObjectPrinter asTruncatedTextFrom: color asHexString asLowercase asSymbol ];
		send: [ :result | 
			"withSmalltalkSearch;
		showOnly: 50;
		helpMessage: 'Quick selection field. Given your INPUT, it executes: self select: [:each | INPUT ]'."
			result
				ifNil: [ nil ]
				ifNotNil: [ result size = 1
						ifTrue: [ result anyOne ]
						ifFalse: [ self species withAll: result ]
					]
			]
]

{ #category : #'gt-inspector-extension' }
ColorPalette >> gtInspectorItemsIn: composite [
	"Hide Items from inspector"

	composite fastTable
		when: [ false ].
]
