"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLEmptyElemTag` | `emptyElemTagOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLEmptyElemTag',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #emptyElemTagOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLEmptyElemTag class >> annotation [

	<ignoreForCoverage>
	<FMClass: #EmptyElemTag super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLEmptyElemTag >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLEmptyElemTag >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #emptyElemTagOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLEmptyElemTag >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
