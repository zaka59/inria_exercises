Class {
	#name : #ALinkedListTest,
	#superclass : #TestCase,
	#instVars : [
		'samplelist'
	],
	#category : #'LinkedList-Tests'
}

{ #category : #running }
ALinkedListTest >> setUp [
	| anode | 
	samplelist := ALinkedList new.
	anode := ALink new.
	anode value: 5.
]

{ #category : #adding }
ALinkedListTest >> testAddElement [
	"test case to add element"
	
	| testnode | 
	testnode := ALink new.
	testnode value: 5.
	
	samplelist add: testnode.
	self assert: (samplelist asArray) size equals: 1.
	
]

{ #category : #adding }
ALinkedListTest >> testAddElementCorrectly [
	"test case to add element correctly"
	
	| anode | 
	anode := ALink new.
	anode value: 5.
	
	samplelist add: anode.
	self assert: (samplelist asArray) size equals: 1.
	self assert: samplelist first value equals: 5.
	
]

{ #category : #adding }
ALinkedListTest >> testRemoveAll [
	"test case to remove element"
	
	| node node2 node3| 
	node := ALink new.
	node value: 5.
	node2 := ALink new.
	node2 value: 5.
	node3 := ALink new.
	node3 value: 5.
	
	samplelist add: node.
	samplelist add: node2.
	samplelist add: node2.
	self assert: (samplelist asArray) size equals: 3.
	samplelist removeAll.
	self assert: (samplelist asArray) size equals: 0.
	
]
