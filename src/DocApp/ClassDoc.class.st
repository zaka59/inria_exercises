Class {
	#name : #ClassDoc,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #DocApp
}

{ #category : #accessing }
ClassDoc >> doc [
	name asClassIfAbsent: [^nil]. 
	^ name asClass comment
]

{ #category : #accessing }
ClassDoc >> methods [
	^ name asClass methods 
]

{ #category : #accessing }
ClassDoc >> name [
	^name
]

{ #category : #accessing }
ClassDoc >> name: aString [
	name:= aString
]
