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
ALinkedListTest >> testFirstElement [
	"test case to remove element"
	
	| node nodeb nodec| 
	node := ALink new.
	node value: 5.
	nodeb := ALink new.
	nodeb value: 6.
	nodec := ALink new.
	nodec value: 7.
	
	samplelist add: node.
	samplelist add: nodeb.
	samplelist add: nodec.
	self assert: (samplelist asArray) size equals: 3.
	self assert: samplelist first equals: 5.
	
]

{ #category : #adding }
ALinkedListTest >> testLastElement [
	"test case to get the last element"
	
	| node nodeb nodec| 
	node := ALink new.
	node value: 5.
	nodeb := ALink new.
	nodeb value: 6.
	nodec := ALink new.
	nodec value: 7.
	
	samplelist add: node.
	samplelist add: nodeb.
	samplelist add: nodec.
	self assert: (samplelist asArray) size equals: 3.
	self assert: samplelist last equals: 7.
	
]

{ #category : #adding }
ALinkedListTest >> testRemoveAll [
	"test case to remove element"
	
	| node nodeb nodec| 
	node := ALink new.
	node value: 5.
	nodeb := ALink new.
	nodeb value: 6.
	nodec := ALink new.
	nodec value: 7.
	
	samplelist add: node.
	samplelist add: nodeb.
	samplelist add: nodec.
	self assert: (samplelist asArray) size equals: 3.
	samplelist removeAll.
	self assert: (samplelist asArray) size equals: 0.
	
]

{ #category : #adding }
ALinkedListTest >> testRemoveFirst [
	"test case to remove element"
	
	| node nodeb nodec| 
	node := ALink new.
	node value: 5.
	nodeb := ALink new.
	nodeb value: 6.
	nodec := ALink new.
	nodec value: 7.
	
	samplelist add: node.
	samplelist add: nodeb.
	samplelist add: nodec.
	self assert: (samplelist asArray) size equals: 3.
	samplelist removeFirst.
	self assert: samplelist first equals: 6.
	
]

{ #category : #adding }
ALinkedListTest >> testRemoveLast [
	"test case to remove last node"
	
	| node nodeb nodec| 
	node := ALink new.
	node value: 5.
	nodeb := ALink new.
	nodeb value: 6.
	nodec := ALink new.
	nodec value: 7.
	
	samplelist add: node.
	samplelist add: nodeb.
	samplelist add: nodec.
	self assert: (samplelist asArray) size equals: 3.
	samplelist removeLast.
	self assert: samplelist last equals: 6.
	
]
