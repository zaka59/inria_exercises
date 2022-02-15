Class {
	#name : #DAClassComponent,
	#superclass : #DAScreenComponent,
	#category : #'DocApp-Components'
}

{ #category : #rendering }
DAClassComponent >> renderContentOn: html [
|docApp|
super renderContentOn: html.
docApp := ClassDoc new.
html form: [
	html text: 'Class name : '. 
	html textInput
		callback: [ :value | docApp name:value ]. 
	html submitButton
		callback: [ self inform: docApp doc ];
		text: 'Submit'. ]. 
]
