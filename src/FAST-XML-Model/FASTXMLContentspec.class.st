"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLContentspec` | `contentspecOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLContentspec',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #contentspecOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLContentspec class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Contentspec super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLContentspec >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #contentspecOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLContentspec >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
