"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `attValueContentOwner` | `FASTXMLTReference` | `content` | `FASTXMLAttValue` | |
| `pseudoAttValueContentOwner` | `FASTXMLTReference` | `content` | `FASTXMLPseudoAttValue` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTXMLEntityRef` | `entityRefOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLEntityRef',
	#superclass : 'FASTXMLEntity',
	#traits : 'FASTXMLTReference',
	#classTraits : 'FASTXMLTReference classTrait',
	#instVars : [
		'#childrenNode => FMOne type: #FASTXMLEntity opposite: #entityRefOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLEntityRef class >> annotation [

	<ignoreForCoverage>
	<FMClass: #EntityRef super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLEntityRef >> childrenNode [
	"Relation named: #childrenNode type: #FASTXMLEntity opposite: #entityRefOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTXMLEntityRef >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
