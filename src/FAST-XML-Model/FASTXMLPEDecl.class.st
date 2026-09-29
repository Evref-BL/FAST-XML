"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLPEDecl` | `pEDeclOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLPEDecl',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTEntityDecl',
	#classTraits : 'FASTXMLTEntityDecl classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #pEDeclOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLPEDecl class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PEDecl super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLPEDecl >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLPEDecl >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #pEDeclOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLPEDecl >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
