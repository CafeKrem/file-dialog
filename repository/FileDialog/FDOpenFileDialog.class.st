"
My responsibility is to provide dialog for selecting Files.

see my super for more information about customization

examples see class side method example

"
Class {
	#name : #FDOpenFileDialog,
	#superclass : #FDFileDialogPresenter,
	#category : #'FileDialog-UI'
}

{ #category : #api }
FDOpenFileDialog >> initialTitle [
	^ 'Select File To Open'
]

{ #category : #initialization }
FDOpenFileDialog >> initializeWidgets [
	super initializeWidgets.
	nameText disable.
	"confirmButton label: 'Open'"
]

{ #category : #accessing }
FDOpenFileDialog >> selectedEntry [
	^ filesList selection selectedItem
]
