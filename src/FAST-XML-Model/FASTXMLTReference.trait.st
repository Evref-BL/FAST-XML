"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `attValueContentOwner` | `FASTXMLTReference` | `content` | `FASTXMLAttValue` | |
| `pseudoAttValueContentOwner` | `FASTXMLTReference` | `content` | `FASTXMLPseudoAttValue` | |



"
Trait {
	#name : 'FASTXMLTReference',
	#instVars : [
		'#attValueContentOwner => FMOne type: #FASTXMLAttValue opposite: #content',
		'#pseudoAttValueContentOwner => FMOne type: #FASTXMLPseudoAttValue opposite: #content'
	],
	#category : 'FAST-XML-Model-Traits',
	#package : 'FAST-XML-Model',
	#tag : 'Traits'
}

{ #category : 'meta' }
FASTXMLTReference classSide >> annotation [

	<ignoreForCoverage>
	<FMClass: #TReference super: #Object>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTXMLTReference >> attValueContentOwner [
	"Relation named: #attValueContentOwner type: #FASTXMLAttValue opposite: #content"

	<ignoreForCoverage>
	<generated>
	<container>
	^ attValueContentOwner
]

{ #category : 'accessing' }
FASTXMLTReference >> attValueContentOwner: anObject [

	<ignoreForCoverage>
	<generated>
	attValueContentOwner := anObject
]

{ #category : 'accessing' }
FASTXMLTReference >> pseudoAttValueContentOwner [
	"Relation named: #pseudoAttValueContentOwner type: #FASTXMLPseudoAttValue opposite: #content"

	<ignoreForCoverage>
	<generated>
	<container>
	^ pseudoAttValueContentOwner
]

{ #category : 'accessing' }
FASTXMLTReference >> pseudoAttValueContentOwner: anObject [

	<ignoreForCoverage>
	<generated>
	pseudoAttValueContentOwner := anObject
]
