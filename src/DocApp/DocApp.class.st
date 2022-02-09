Class {
	#name : #DocApp,
	#superclass : #WAComponent,
	#instVars : [
		'theClass'
	],
	#category : #DocApp
}

{ #category : #testing }
DocApp class >> canBeRoot [
	^ true
]

{ #category : #initialization }
DocApp class >> initialize [
"self initialize"
| app |
app := WAAdmin register: self asApplicationAt: 'DocApp'.
app
addLibrary: JQDeploymentLibrary;
addLibrary: JQUiDeploymentLibrary
]

{ #category : #accessing }
DocApp >> description [
	theClass asClassIfAbsent: [^'Class not found.']. 
	^ theClass asClass comment
]

{ #category : #accessing }
DocApp >> theClass [ 
	^theClass
]

{ #category : #accessing }
DocApp >> theClass: aString [
	theClass := aString
]
