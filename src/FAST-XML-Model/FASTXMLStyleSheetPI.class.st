"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLStyleSheetPI` | `styleSheetPIOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLStyleSheetPI',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #styleSheetPIOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLStyleSheetPI class >> annotation [

	<ignoreForCoverage>
	<FMClass: #StyleSheetPI super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLStyleSheetPI >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLStyleSheetPI >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #styleSheetPIOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLStyleSheetPI >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
