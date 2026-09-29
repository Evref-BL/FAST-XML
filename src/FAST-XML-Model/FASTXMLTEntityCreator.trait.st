"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FASTXMLTEntityCreator',
	#category : 'FAST-XML-Model-Model',
	#package : 'FAST-XML-Model',
	#tag : 'Model'
}

{ #category : 'meta' }
FASTXMLTEntityCreator classSide >> annotation [

	<ignoreForCoverage>
	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-XML-Model'>
	<generated>
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttDef [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLAttDef new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLAttValue new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttlistDecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLAttlistDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttribute [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLAttribute new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCDSect [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLCDSect new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCDStart [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLCDStart new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCData [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLCData new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCharData [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLCharData new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCharRef [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLCharRef new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newChildren [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLChildren new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newComment [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLComment new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newContent [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLContent new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newContentspec [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLContentspec new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newDefaultDecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLDefaultDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newDoctypedecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLDoctypedecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newDocument [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLDocument new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newERROR [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLERROR new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newETag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLETag new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newElement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLElement new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newElementdecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLElementdecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEmptyElemTag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLEmptyElemTag new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEncName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLEncName new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEntityRef [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLEntityRef new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEntityValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLEntityValue new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEnumeration [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLEnumeration new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newExternalID [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLExternalID new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newGEDecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLGEDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newMixed [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLMixed new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNDataDecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLNDataDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLName new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNmtoken [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLNmtoken new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNotationDecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLNotationDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNotationType [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLNotationType new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPEDecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPEDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPEReference [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPEReference new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPI [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPI new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPITarget [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPITarget new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newProlog [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLProlog new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPseudoAtt [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPseudoAtt new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPseudoAttValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPseudoAttValue new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPubidLiteral [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPubidLiteral new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPublicID [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLPublicID new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newSTag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLSTag new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newStringType [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLStringType new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newStyleSheetPI [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLStyleSheetPI new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newSystemLiteral [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLSystemLiteral new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newTokenizedType [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLTokenizedType new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newURI [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLURI new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newVersionNum [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLVersionNum new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newXMLDecl [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLXMLDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newXmlModelPI [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTXMLXmlModelPI new
]
