"
I'm a column for display the size of the file
"
Class {
	#name : #FDSizeFileReferenceColumn,
	#superclass : #FDAbstractStringTableColumn,
	#category : #'FileDialog-FileTreeStrategie'
}

{ #category : #templateMethod }
FDSizeFileReferenceColumn class >> columnTitle [
	"I'm returning a String for the title"

	^ 'size'
]

{ #category : #templateMethod }
FDSizeFileReferenceColumn class >> evaluateOn: aFileReference [
	"I'm provide action for fileReference"

	^ aFileReference size
]
