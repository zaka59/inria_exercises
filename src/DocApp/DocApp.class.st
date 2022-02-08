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
	<webResource: #html>
	^ '<div class="Doc"> <h2>',(self theClass  asString ),'</h2> <p>', (theClass comment), '<p></div>'
]

{ #category : #accessing }
DocApp >> theClass [ 
	^theClass
]

{ #category : #accessing }
DocApp >> theClass: anObject [
	theClass := anObject
]
