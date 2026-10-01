"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLPI` | `pIOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLPI',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTMarkupdecl',
	#classTraits : 'FASTXMLTMarkupdecl classTrait',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #pIOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLPI class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PI super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLPI >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #pIOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLPI >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
