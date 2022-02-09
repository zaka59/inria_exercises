"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestDocApp,
	#superclass : #PackageManifest,
	#category : #'DocApp-Manifest'
}

{ #category : #'code-critics' }
ManifestDocApp class >> ruleReAsClassRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#DocApp)) #'2022-02-09T02:06:09.02626+01:00') )
]
