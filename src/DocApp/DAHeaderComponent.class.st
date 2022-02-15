Class {
	#name : #DAHeaderComponent,
	#superclass : #WAComponent,
	#category : #'DocApp-Components'
}

{ #category : #rendering }
DAHeaderComponent >> renderContentOn: html [
html heading level1  with: 'Doc App'
]
