Class {
	#name : #ColorPaletteTest,
	#superclass : #TestCase,
	#category : #'ColorPalettes-Tests'
}

{ #category : #tests }
ColorPaletteTest >> testWithColors [
	| palette |
	palette := ColorPalette withColors: { Color red . Color green . Color blue }.
	
	self assert: palette size equals: 3.
	self assert: palette first equals: Color red.
	self assert: palette second equals: Color green.
	self assert: palette third equals: Color blue.
]
