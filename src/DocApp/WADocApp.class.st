Class {
	#name : #WADocApp,
	#superclass : #WAComponent,
	#category : #'DocApp-Components'
}

{ #category : #initialization }
WADocApp class >> canBeRoot [
	^ true
]

{ #category : #initialization }
WADocApp class >> initialize [
"self initialize"
| app |
app := WAAdmin register: self asApplicationAt: 'DocApp'.
app
addLibrary: JQDeploymentLibrary;
addLibrary: JQUiDeploymentLibrary
]

{ #category : #rendering }
WADocApp >> renderContentOn: html [ 
|docApp|
docApp := DocApp new.
html form: [
	html text: 'Class name : '. 
	html textInput
		callback: [ :value | docApp theClass:value ]. 
	html submitButton
		callback: [ self inform: docApp description  ]; 
		text: 'Submit'. ].
 
]
