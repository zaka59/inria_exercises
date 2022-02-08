Class {
	#name : #ALinkedList,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail'
	],
	#category : #LinkedList
}

{ #category : #adding }
ALinkedList >> add: aNode [
	^ self addLast: aNode
]

{ #category : #adding }
ALinkedList >> addAll: collection [
	collection do: [ :each | self add: each ]
]

{ #category : #adding }
ALinkedList >> addLast: aNode [
	| node |
	node := aNode.
	tail ifNotNil: [ tail nextNode: node ].
	head ifNil: [ head := node ].
	tail := node.
	^ node
]

{ #category : #converting }
ALinkedList >> asArray [	
	| arr cur|
	arr := OrderedCollection new.
	
	cur := head.
	[cur isNotNil] whileTrue: [ arr add: (cur value). cur :=  cur nextNode.].
	
	^ arr
]

{ #category : #private }
ALinkedList >> emptyCheck [
	self isEmpty
		ifTrue: [ CollectionIsEmpty signalWith: self ]
]

{ #category : #acccessing }
ALinkedList >> first [	
	self emptyCheck.
	^ head value
]

{ #category : #testing }
ALinkedList >> isEmpty [
	^ head isNil and: [ tail isNil ]
]

{ #category : #acccessing }
ALinkedList >> last [	
	self emptyCheck.
	^ tail value
]

{ #category : #removing }
ALinkedList >> removeAll [
	head := tail := nil
]
