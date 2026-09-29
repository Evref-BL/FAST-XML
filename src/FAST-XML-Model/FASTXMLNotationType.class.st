"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLNotationType` | `notationTypeOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLNotationType',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTEnumeratedType',
	#classTraits : 'FASTXMLTEnumeratedType classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #notationTypeOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLNotationType class >> annotation [

	<ignoreForCoverage>
	<FMClass: #NotationType super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLNotationType >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLNotationType >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #notationTypeOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLNotationType >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
