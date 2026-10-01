"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `content` | `FASTXMLAttValue` | `attValueContentOwner` | `FASTXMLTReference` | |



"
Class {
	#name : 'FASTXMLAttValue',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#content => FMMany type: #FASTXMLTReference opposite: #attValueContentOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLAttValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #AttValue super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLAttValue >> addContent: anObject [

	<ignoreForCoverage>
	<generated>
	^ self content add: anObject
]

{ #category : 'accessing' }
FASTXMLAttValue >> content [
	"Relation named: #content type: #FASTXMLTReference opposite: #attValueContentOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ content
]

{ #category : 'accessing' }
FASTXMLAttValue >> content: anObject [

	<ignoreForCoverage>
	<generated>
	content value: anObject
]
