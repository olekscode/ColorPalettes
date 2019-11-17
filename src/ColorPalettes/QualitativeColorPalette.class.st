Class {
	#name : #QualitativeColorPalette,
	#superclass : #ColorPalette,
	#category : #ColorPalettes
}

{ #category : #initialization }
QualitativeColorPalette >> fillWithRgbValues: anArrayOfArrays [
	| colors |
	colors := anArrayOfArrays collect: [ :each |
		Color r: each first g: each second b: each third ].
	
	self addAll: colors
]

{ #category : #initialization }
QualitativeColorPalette >> initialize [
	super initialize.
	self fillWithRgbValues: self rgbValues.
]

{ #category : #initialization }
QualitativeColorPalette >> rgbValues [
	self subclassResponsibility 
]
