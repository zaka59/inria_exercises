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
ALinkedList >> add: anObject [
	"Add node to linkedlist"
	^ self addLast: anObject
]

{ #category : #adding }
ALinkedList >> addLast: anObject [
	"Add node to end of linkedlist"
	| link |
	link := anObject.
	tail ifNotNil: [ tail nextlink: link ].
	head ifNil: [ head := link ].
	tail := link.
	^ link
]

{ #category : #converting }
ALinkedList >> asArray [
	"Return linkedlist as an orderedCollection"
	| arr current|
	arr := OrderedCollection new.
	
	current := head.
	[current isNotNil] whileTrue: [ arr add: (current value). current :=  current nextlink.].
	
	^ arr
]

{ #category : #private }
ALinkedList >> emptyCheck [
	self isEmpty
		ifTrue: [ CollectionIsEmpty signalWith: self ]
]

{ #category : #acccessing }
ALinkedList >> first [
	"Return first element on linkedlist"
	self emptyCheck.
	^ head value
]

{ #category : #testing }
ALinkedList >> isEmpty [
	"Check if linkedlist is empty"
	^ head isNil and: [ tail isNil ]
]

{ #category : #removing }
ALinkedList >> removeAll [
	"Empty the linkedlist"
	head := tail := nil
]
