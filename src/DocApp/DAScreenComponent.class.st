Class {
	#name : #DAScreenComponent,
	#superclass : #WAComponent,
	#instVars : [
		'header'
	],
	#classInstVars : [
		'header'
	],
	#category : #DocApp
}

{ #category : #accessing }
DAScreenComponent >> children [
^ OrderedCollection with: header
]

{ #category : #accessing }
DAScreenComponent >> initialize [
super initialize.
header := DAHeaderComponent new.
]

{ #category : #accessing }
DAScreenComponent >> renderContentOn: html [
html render: header
]
