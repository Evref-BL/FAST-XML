"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `content` | `FASTXMLPseudoAttValue` | `pseudoAttValueContentOwner` | `FASTXMLTReference` | |



"
Class {
	#name : 'FASTXMLPseudoAttValue',
	#superclass : 'FASTXMLEntity',
	#instVars : [
		'#content => FMMany type: #FASTXMLTReference opposite: #pseudoAttValueContentOwner'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLPseudoAttValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PseudoAttValue super: #FASTXMLEntity>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTXMLPseudoAttValue >> addContent: anObject [

	<ignoreForCoverage>
	<generated>
	^ self content add: anObject
]

{ #category : 'accessing' }
FASTXMLPseudoAttValue >> content [
	"Relation named: #content type: #FASTXMLTReference opposite: #pseudoAttValueContentOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ content
]

{ #category : 'accessing' }
FASTXMLPseudoAttValue >> content: anObject [

	<ignoreForCoverage>
	<generated>
	content value: anObject
]
