Class {
	#name : #AddElementTest,
	#superclass : #TestCase,
	#instVars : [
		'samplelist'
	],
	#category : #'LinkedList-Tests'
}

{ #category : #running }
AddElementTest >> setUp [

	| testnode | 
	samplelist := ALinkedList new.
	testnode := ANode new.
	testnode value: 5.
]

{ #category : #adding }
AddElementTest >> testAddElement [	
	| testnode | 
	testnode := ANode new.
	testnode value: 10.
	samplelist add: testnode.
	self assert: (samplelist asArray) size equals: 1.
	
]

{ #category : #adding }
AddElementTest >> testAddElement: link [
	"test case to add element"
	
	samplelist add: link.
	self assert: (samplelist asArray) size equals: 1.
	
]

{ #category : #adding }
AddElementTest >> testAddedCorrectly [	
	| testnode | 
	testnode := ANode new.
	testnode value: 10.
	samplelist add: testnode.
	self assert: (samplelist asArray) size equals: 1.
	
]
