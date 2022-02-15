Class {
	#name : #DAClassComponent,
	#superclass : #DAScreenComponent,
	#instVars : [
		'docApp'
	],
	#category : #'DocApp-Components'
}

{ #category : #rendering }
DAClassComponent >> docApp [
	^docApp

]

{ #category : #rendering }
DAClassComponent >> docApp: name [
	docApp := ClassDoc new name: name

]

{ #category : #rendering }
DAClassComponent >> renderContentOn: html [
super renderContentOn: html.
html form: [
	html text: 'Class name : '. 
	html textInput
		callback: [ :value |  self docApp: value
				    ]. 
	html submitButton
		callback: [   ];
		text: 'Submit' ].

docApp ifNotNil: [   	
		docApp doc ifNotNil: [  
		html heading level: 2; with: docApp name.
		html text: docApp doc.
docApp methods do: [ :m |
						html render: (MethodComponent new name: m) ] ]
		ifNil: [ html text: 'Enter a valid class name.' ]
				].
]
