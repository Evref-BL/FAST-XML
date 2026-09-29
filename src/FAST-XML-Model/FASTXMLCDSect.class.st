"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLCDSect` | `cDSectOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLCDSect',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #cDSectOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLCDSect class >> annotation [

	<ignoreForCoverage>
	<FMClass: #CDSect super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLCDSect >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLCDSect >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #cDSectOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLCDSect >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
