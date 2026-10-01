"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLGEDecl` | `gEDeclOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLGEDecl',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTEntityDecl',
	#classTraits : 'FASTXMLTEntityDecl classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #gEDeclOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLGEDecl class >> annotation [

	<ignoreForCoverage>
	<FMClass: #GEDecl super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLGEDecl >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLGEDecl >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #gEDeclOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLGEDecl >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
