"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLDefaultDecl` | `defaultDeclOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLDefaultDecl',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #defaultDeclOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLDefaultDecl class >> annotation [

	<ignoreForCoverage>
	<FMClass: #DefaultDecl super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLDefaultDecl >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #defaultDeclOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLDefaultDecl >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
