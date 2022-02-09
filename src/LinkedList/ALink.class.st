Class {
	#name : #ALink,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextLink'
	],
	#category : #LinkedList
}

{ #category : #initialize }
ALink >> clearLinks [
	"Remove reference to nextnode"
	nextLink := nil
]

{ #category : #acccessing }
ALink >> nextlink [
	"Return the nextnode"
	^nextLink 
]

{ #category : #acccessing }
ALink >> nextlink: aLink [
	"Set nextnode"
	nextLink := aLink 
]

{ #category : #acccessing }
ALink >> value [ 
	"Return the nodes value"
	^value
]

{ #category : #acccessing }
ALink >> value: aValue [
	"Set nodes value"
	value := aValue 
]
