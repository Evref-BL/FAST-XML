"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLProlog` | `prologOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLProlog',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #prologOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLProlog class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Prolog super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLProlog >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLProlog >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #prologOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLProlog >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
