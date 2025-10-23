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

	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-XML-Model'>
	<generated>
	^ self
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttDef [

	<generated>
	^ self add: FASTXMLAttDef new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttValue [

	<generated>
	^ self add: FASTXMLAttValue new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttlistDecl [

	<generated>
	^ self add: FASTXMLAttlistDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newAttribute [

	<generated>
	^ self add: FASTXMLAttribute new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCDSect [

	<generated>
	^ self add: FASTXMLCDSect new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCDStart [

	<generated>
	^ self add: FASTXMLCDStart new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCData [

	<generated>
	^ self add: FASTXMLCData new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCharData [

	<generated>
	^ self add: FASTXMLCharData new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newCharRef [

	<generated>
	^ self add: FASTXMLCharRef new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newChildren [

	<generated>
	^ self add: FASTXMLChildren new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newComment [

	<generated>
	^ self add: FASTXMLComment new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newContent [

	<generated>
	^ self add: FASTXMLContent new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newContentspec [

	<generated>
	^ self add: FASTXMLContentspec new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newDefaultDecl [

	<generated>
	^ self add: FASTXMLDefaultDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newDoctypedecl [

	<generated>
	^ self add: FASTXMLDoctypedecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newDocument [

	<generated>
	^ self add: FASTXMLDocument new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newERROR [

	<generated>
	^ self add: FASTXMLERROR new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newETag [

	<generated>
	^ self add: FASTXMLETag new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newElement [

	<generated>
	^ self add: FASTXMLElement new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newElementdecl [

	<generated>
	^ self add: FASTXMLElementdecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEmptyElemTag [

	<generated>
	^ self add: FASTXMLEmptyElemTag new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEncName [

	<generated>
	^ self add: FASTXMLEncName new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEntityRef [

	<generated>
	^ self add: FASTXMLEntityRef new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEntityValue [

	<generated>
	^ self add: FASTXMLEntityValue new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newEnumeration [

	<generated>
	^ self add: FASTXMLEnumeration new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newExternalID [

	<generated>
	^ self add: FASTXMLExternalID new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newGEDecl [

	<generated>
	^ self add: FASTXMLGEDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newMixed [

	<generated>
	^ self add: FASTXMLMixed new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNDataDecl [

	<generated>
	^ self add: FASTXMLNDataDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newName [

	<generated>
	^ self add: FASTXMLName new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNmtoken [

	<generated>
	^ self add: FASTXMLNmtoken new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNotationDecl [

	<generated>
	^ self add: FASTXMLNotationDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newNotationType [

	<generated>
	^ self add: FASTXMLNotationType new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPEDecl [

	<generated>
	^ self add: FASTXMLPEDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPEReference [

	<generated>
	^ self add: FASTXMLPEReference new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPI [

	<generated>
	^ self add: FASTXMLPI new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPITarget [

	<generated>
	^ self add: FASTXMLPITarget new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newProlog [

	<generated>
	^ self add: FASTXMLProlog new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPseudoAtt [

	<generated>
	^ self add: FASTXMLPseudoAtt new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPseudoAttValue [

	<generated>
	^ self add: FASTXMLPseudoAttValue new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPubidLiteral [

	<generated>
	^ self add: FASTXMLPubidLiteral new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newPublicID [

	<generated>
	^ self add: FASTXMLPublicID new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newSTag [

	<generated>
	^ self add: FASTXMLSTag new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newStringType [

	<generated>
	^ self add: FASTXMLStringType new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newStyleSheetPI [

	<generated>
	^ self add: FASTXMLStyleSheetPI new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newSystemLiteral [

	<generated>
	^ self add: FASTXMLSystemLiteral new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newTokenizedType [

	<generated>
	^ self add: FASTXMLTokenizedType new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newURI [

	<generated>
	^ self add: FASTXMLURI new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newVersionNum [

	<generated>
	^ self add: FASTXMLVersionNum new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newXMLDecl [

	<generated>
	^ self add: FASTXMLXMLDecl new
]

{ #category : 'entity creation' }
FASTXMLTEntityCreator >> newXmlModelPI [

	<generated>
	^ self add: FASTXMLXmlModelPI new
]
