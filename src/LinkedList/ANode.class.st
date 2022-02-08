Class {
	#name : #ANode,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextNode'
	],
	#category : #LinkedList
}

{ #category : #initialize }
ANode >> clearNodes [
	nextNode := nil
]

{ #category : #acccessing }
ANode >> nextNode [
	^nextNode 
]

{ #category : #acccessing }
ANode >> nextNode: aNode [
	nextNode := aNode 
]

{ #category : #acccessing }
ANode >> value [ 
	^value
]

{ #category : #acccessing }
ANode >> value: aValue [
	value := aValue 
]
