"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `documentRootOwner` | `FASTXMLElement` | `root` | `FASTXMLDocument` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTXMLElement` | `elementOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLElement',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTXMLEntity opposite: #elementOwner',
		'#documentRootOwner => FMOne type: #FASTXMLDocument opposite: #root'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLElement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Element super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLElement >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTXMLElement >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTXMLEntity opposite: #elementOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTXMLElement >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

{ #category : 'accessing' }
FASTXMLElement >> documentRootOwner [
	"Relation named: #documentRootOwner type: #FASTXMLDocument opposite: #root"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ documentRootOwner
]

{ #category : 'accessing' }
FASTXMLElement >> documentRootOwner: anObject [

	<ignoreForCoverage>
	<generated>
	documentRootOwner := anObject
]
