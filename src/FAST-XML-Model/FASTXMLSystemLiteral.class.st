"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLSystemLiteral` | `systemLiteralOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLSystemLiteral',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #systemLiteralOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLSystemLiteral class >> annotation [

	<ignoreForCoverage>
	<FMClass: #SystemLiteral super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLSystemLiteral >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #systemLiteralOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLSystemLiteral >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
