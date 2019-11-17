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
