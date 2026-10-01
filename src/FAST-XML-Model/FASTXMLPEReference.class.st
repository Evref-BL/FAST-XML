"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLPEReference` | `pEReferenceOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLPEReference',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTAttType',
	#classTraits : 'FASTXMLTAttType classTrait',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #pEReferenceOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLPEReference class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PEReference super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLPEReference >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #pEReferenceOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLPEReference >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
