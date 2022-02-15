Class {
	#name : #MethodComponent,
	#superclass : #WAComponent,
	#instVars : [
		'name'
	],
	#category : #'DocApp-Components'
}

{ #category : #accessing }
MethodComponent >> doc [
	|mdoc|
	(name comment) ifNil: [ mdoc:='No doc for this method' ] ifNotNil: [ mdoc:=name comment ].
	^mdoc	

]

{ #category : #accessing }
MethodComponent >> name [
	^name
]

{ #category : #accessing }
MethodComponent >> name: aString [
	name:= aString
]

{ #category : #accessing }
MethodComponent >> renderContentOn: html [

html heading level: 4; with: self name.
html div id:'desc'; with: self doc
]
