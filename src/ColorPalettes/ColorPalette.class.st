Class {
	#name : #ColorPalette,
	#superclass : #OrderedCollection,
	#category : #ColorPalettes
}

{ #category : #'as yet unclassified' }
ColorPalette class >> withColors: aCollectionOfColors [
	^ self withAll: aCollectionOfColors
]
