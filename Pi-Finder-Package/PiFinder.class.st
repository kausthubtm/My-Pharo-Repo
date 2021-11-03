Class {
	#name : #PiFinder,
	#superclass : #Object,
	#instVars : [
		'currSum',
		'denominator',
		'adding'
	],
	#category : #'Pi-Finder-Package'
}

{ #category : #initialization }
PiFinder >> initialize [ 
	currSum := 1.
	denominator := 3.
	adding := false.
]

{ #category : #constants }
PiFinder >> pi [
	^ (currSum * 4) asFloat.
]

{ #category : #stepping }
PiFinder >> step [

	| frac |
	frac := Fraction new.
	frac setNumerator: 1 denominator: denominator.
	currSum := adding
		           ifTrue: [ currSum + frac ]
		           ifFalse: [ currSum - frac ].
		
	denominator := denominator + 2.	
	adding := adding not.
]
