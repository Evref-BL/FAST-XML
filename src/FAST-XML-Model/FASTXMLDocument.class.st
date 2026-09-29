"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `root` | `FASTXMLDocument` | `documentRootOwner` | `FASTXMLElement` | |

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `element` | `FamixTSourceAnchor` | `sourceAnchor` | `FamixTSourceEntity` | Enable the accessibility to the famix entity that this class is a source pointer for|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `source` | `String` | nil | Actual source code of the source entity|
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTXMLDocument',
	#superclass : 'FASTXMLEntity',
	#traits : '(FASTTEntity + FamixTHasImmediateSource withPrecedenceOf: FamixTHasImmediateSource)',
	#classTraits : '(FASTTEntity classTrait + FamixTHasImmediateSource classTrait withPrecedenceOf: FamixTHasImmediateSource classTrait)',
	#instVars : [
		'#root => FMOne type: #FASTXMLElement opposite: #documentRootOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLDocument class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Document super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLDocument >> root [
	"Relation named: #root type: #FASTXMLElement opposite: #documentRootOwner"

	<ignoreForCoverage>
	<generated>
	^ root
]

{ #category : 'accessing' }
FASTXMLDocument >> root: anObject [

	<ignoreForCoverage>
	<generated>
	root := anObject
]
