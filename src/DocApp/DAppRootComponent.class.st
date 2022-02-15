Class {
	#name : #DAppRootComponent,
	#superclass : #WAComponent,
	#instVars : [
		'main'
	],
	#category : #'DocApp-Components'
}

{ #category : #initialization }
DAppRootComponent class >> canBeRoot [
^ true

]

{ #category : #initialization }
DAppRootComponent class >> initialize [
"self initialize"
| app |
app := WAAdmin register: self asApplicationAt: 'DocApp'.
app
addLibrary: JQDeploymentLibrary;
addLibrary: JQUiDeploymentLibrary

]

{ #category : #rendering }
DAppRootComponent >> children [
^ { main }
]

{ #category : #rendering }
DAppRootComponent >> initialize [
super initialize.
main := DAClassComponent new.
]

{ #category : #rendering }
DAppRootComponent >> renderContentOn: html [
html render: main
]

{ #category : #rendering }
DAppRootComponent >> updateRoot: anHtmlRoot [
super updateRoot: anHtmlRoot.
anHtmlRoot beHtml5.
anHtmlRoot title: 'DoccApp'.
]
