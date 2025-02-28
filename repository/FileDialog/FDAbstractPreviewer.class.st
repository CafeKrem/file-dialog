"
I'm an abstract class to define a interface for a preview system 

my subclasses have to define :

* matchingMimeType: aZnMimeType
	return a Boolean to indicate if element matches

* previewOn: aFileReference 
	return a Presenter (son of SpPresenter)  
"
Class {
	#name : #FDAbstractPreviewer,
	#superclass : #Object,
	#instVars : [
		'predicateFunction'
	],
	#category : #'FileDialog-previewerStrategie'
}

{ #category : #testing }
FDAbstractPreviewer class >> isAbstract [
	^ self = FDAbstractPreviewer
]

{ #category : #testing }
FDAbstractPreviewer >> canBeUsedOn: aFileReference [
	aFileReference ifNil: [ ^ false ].
	aFileReference mimeTypes
		ifNil: [ ^ false ]
		ifNotNil:
			[ :items | ^ items anySatisfy: [ :aZnMimeType | self matchingMimeType: aZnMimeType ] ]
]

{ #category : #testing }
FDAbstractPreviewer >> matchingMimeType: aZnMimeType [
	"return a Boolean to indicate if element matches"
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
FDAbstractPreviewer >> previewOn: aFileReference [
	^ self subclassResponsibility 
]
