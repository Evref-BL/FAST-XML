"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `content` | `FASTXMLEntityValue` | `entityValueContentOwner` | `FASTXMLEntity` | |



"
Class {
	#name : 'FASTXMLEntityValue',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#content => FMMany type: #FASTXMLEntity opposite: #entityValueContentOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLEntityValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #EntityValue super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLEntityValue >> addContent: anObject [

	<ignoreForCoverage>
	<generated>
	^ self content add: anObject
]

{ #category : 'accessing' }
FASTXMLEntityValue >> content [
	"Relation named: #content type: #FASTXMLEntity opposite: #entityValueContentOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ content
]

{ #category : 'accessing' }
FASTXMLEntityValue >> content: anObject [

	<ignoreForCoverage>
	<generated>
	content value: anObject
]
