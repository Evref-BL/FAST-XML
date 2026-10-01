"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLElementdecl` | `elementdeclOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLElementdecl',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTMarkupdecl',
	#classTraits : 'FASTXMLTMarkupdecl classTrait',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #elementdeclOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLElementdecl class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Elementdecl super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLElementdecl >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLElementdecl >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #elementdeclOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLElementdecl >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
