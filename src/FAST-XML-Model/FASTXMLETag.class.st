"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLETag` | `eTagOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLETag',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #eTagOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLETag class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ETag super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLETag >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #eTagOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLETag >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
