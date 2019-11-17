Class {
	#name : #BaselineOfColorPalettes,
	#superclass : #BaselineOf,
	#category : #BaselineOfColorPalettes
}

{ #category : #baselines }
BaselineOfColorPalettes >> baseline: spec [
	<baseline>
	spec for: #common do: [	
				
		"Packages"
		spec 
			package: 'ColorPalettes';
			package: 'ColorPalettes-Tests' with: [ spec requires: #('ColorPalettes') ] ]
]
