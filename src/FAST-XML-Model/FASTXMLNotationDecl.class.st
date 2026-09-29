"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLNotationDecl` | `notationDeclOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLNotationDecl',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTMarkupdecl',
	#classTraits : 'FASTXMLTMarkupdecl classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #notationDeclOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLNotationDecl class >> annotation [

	<ignoreForCoverage>
	<FMClass: #NotationDecl super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLNotationDecl >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLNotationDecl >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #notationDeclOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLNotationDecl >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
