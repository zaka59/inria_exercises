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

{ #category : #adding }
ALinkedList >> head [
	^ head
]

{ #category : #adding }
ALinkedList >> head: aLink [
	head := aLink
]

{ #category : #testing }
ALinkedList >> isEmpty [
	"Check if linkedlist is empty"
	^ head isNil and: [ tail isNil ]
]

{ #category : #acccessing }
ALinkedList >> last [
	"Return last element on linkedlist"
	self emptyCheck.
	^ tail value
]

{ #category : #removing }
ALinkedList >> removeAll [
	"Empty the linkedlist"
	head := tail := nil
]

{ #category : #removing }
ALinkedList >> removeFirst [
	"Remove my first element."
	| link |
	self emptyCheck.
	link := head.
	head := head nextlink.
	head 
		ifNil: [ tail := nil ].
	link clearLinks.
	^ link
]

{ #category : #removing }
ALinkedList >> removeLast [
	"Remove my last element"
	| link newLast |
	self emptyCheck.
	newLast := head.
	link := tail.
	[ newLast nextlink = tail ] whileFalse: [newLast := newLast nextlink].
	tail := newLast.
	tail 
		ifNil: [ head := nil ]
		ifNotNil: [ tail nextlink: nil ].
	link clearLinks.
	^ link
]

{ #category : #adding }
ALinkedList >> tail [

	^ tail
]

{ #category : #adding }
ALinkedList >> tail: aLink [
	tail := aLink
]
