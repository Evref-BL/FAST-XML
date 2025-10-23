"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericParent` | `FASTXMLEntity` | `genericChildren` | `FASTXMLEntity` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTXMLEntity` | `genericParent` | `FASTXMLEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTXMLEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity',
	#classTraits : 'FASTTEntity classTrait',
	#instVars : [
		'#genericChildren => FMMany type: #FASTXMLEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTXMLEntity opposite: #genericChildren'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-XML-Model'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FASTXMLEntity class >> isAbstract [

	<generated>
	^ self == FASTXMLEntity
]

{ #category : 'meta' }
FASTXMLEntity class >> metamodel [

	<generated>
	^ FASTXMLModel metamodel
]

{ #category : 'adding' }
FASTXMLEntity >> addGenericChildren: anObject [
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTXMLEntity opposite: #genericParent"

	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTXMLEntity >> genericChildren: anObject [

	<generated>
	genericChildren value: anObject
]

{ #category : 'navigation' }
FASTXMLEntity >> genericChildrenGroup [
	<generated>
	<navigation: 'GenericChildren'>
	^ MooseSpecializedGroup withAll: self genericChildren asSet
]

{ #category : 'accessing' }
FASTXMLEntity >> genericParent [
	"Relation named: #genericParent type: #FASTXMLEntity opposite: #genericChildren"

	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTXMLEntity >> genericParent: anObject [

	<generated>
	genericParent := anObject
]

{ #category : 'navigation' }
FASTXMLEntity >> genericParentGroup [
	<generated>
	<navigation: 'GenericParent'>
	^ MooseSpecializedGroup with: self genericParent
]

{ #category : 'testing' }
FASTXMLEntity >> isQueryable [

	<generated>
	^ false
]
