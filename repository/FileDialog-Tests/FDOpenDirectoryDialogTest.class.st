Class {
	#name : #FDOpenDirectoryDialogTest,
	#superclass : #FDFileDialogTest,
	#category : #'FileDialog-Tests'
}

{ #category : #accessing }
FDOpenDirectoryDialogTest >> dialogClass [
	^ FDOpenDirectoryDialog
]

{ #category : #tests }
FDOpenDirectoryDialogTest >> testSelectDirectory [
	| selectedDirectory |
	dialog okActionBlock: [ :dir | selectedDirectory := dir ].
	window := dialog openDialogWithSpec.
	self assert: dialog currentDirectory equals: root.
	dialog selectFile: root / 'dir'.
	self
		assert: dialog selectedEntry
		equals: root / dialog filesList selection selectedItem basename.
	window triggerOkAction.
	self assert: selectedDirectory equals: root / 'dir'

]
