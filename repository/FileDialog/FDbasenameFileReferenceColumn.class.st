"
I'm use to give you the basename of a fileReference
	example : 'my/path/something.exe' asFileReference basename >> something.exe 
"
Class {
	#name : #FDbasenameFileReferenceColumn,
	#superclass : #FDAbstractStringTableColumn,
	#category : #'FileDialog-FileTreeStrategie'
}

{ #category : #templateMethod }
FDbasenameFileReferenceColumn class >> columnTitle [
	"I'm returning a String for the title"

	^ 'basename'
]

{ #category : #templateMethod }
FDbasenameFileReferenceColumn class >> evaluateOn: aFileReference [
	"I'm provide action for fileReference"

	^ aFileReference basename
]
