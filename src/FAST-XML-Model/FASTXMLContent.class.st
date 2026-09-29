"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLContent` | `contentOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLContent',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #contentOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLContent class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Content super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLContent >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLContent >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #contentOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLContent >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
