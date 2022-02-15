Class {
	#name : #DAComponent,
	#superclass : #WAComponent,
	#category : #'DocApp-Components'
}

{ #category : #testing }
DAComponent class >> canBeRoot [
	^ true
]

{ #category : #testing }
DAComponent class >> initialize [
"self initialize"
| app |
app := WAAdmin register: self asApplicationAt: 'DocApp'.
app
addLibrary: JQDeploymentLibrary;
addLibrary: JQUiDeploymentLibrary
]

{ #category : #rendering }
DAComponent >> renderContentOn: html [ 
|docApp|
docApp := ClassDoc new.
html form: [
	html text: 'Class name : '. 
	html textInput
		callback: [ :value | docApp name:value ]. 
	html submitButton
		callback: [ self inform: docApp doc  ]; 
		text: 'Submit'. ].
]
