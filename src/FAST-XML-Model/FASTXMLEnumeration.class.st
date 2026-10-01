"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLEnumeration` | `enumerationOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLEnumeration',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTEnumeratedType',
	#classTraits : 'FASTXMLTEnumeratedType classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #enumerationOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLEnumeration class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Enumeration super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLEnumeration >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLEnumeration >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #enumerationOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLEnumeration >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
