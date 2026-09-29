"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLPublicID` | `publicIDOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLPublicID',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #publicIDOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLPublicID class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PublicID super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLPublicID >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLPublicID >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #publicIDOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLPublicID >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
