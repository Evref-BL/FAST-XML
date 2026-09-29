"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLNDataDecl` | `nDataDeclOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLNDataDecl',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #nDataDeclOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLNDataDecl class >> annotation [

	<ignoreForCoverage>
	<FMClass: #NDataDecl super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLNDataDecl >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #nDataDeclOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLNDataDecl >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
