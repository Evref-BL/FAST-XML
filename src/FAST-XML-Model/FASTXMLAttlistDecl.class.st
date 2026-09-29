"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLAttlistDecl` | `attlistDeclOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLAttlistDecl',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTMarkupdecl',
	#classTraits : 'FASTXMLTMarkupdecl classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #attlistDeclOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLAttlistDecl class >> annotation [

	<ignoreForCoverage>
	<FMClass: #AttlistDecl super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLAttlistDecl >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLAttlistDecl >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #attlistDeclOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLAttlistDecl >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
