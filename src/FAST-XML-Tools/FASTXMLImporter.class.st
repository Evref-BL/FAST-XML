Class {
	#name : 'FASTXMLImporter',
	#superclass : 'TSFASTAbstractImporter',
	#category : 'FAST-XML-Tools',
	#package : 'FAST-XML-Tools'
}

{ #category : 'accessing' }
FASTXMLImporter class >> extensions [
	"File extensions without the dot that the importer handles"

	^ #( 'xml' )
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> importToFAST: tsTree usingSourceCode: aString [

	| tsLanguage importer |
	"needs cleaning"
	tsLanguage := TSLanguage xml.
	importer := TSFASTImporter new.
	importer tsLanguage: tsLanguage.
	importer languageName: 'XML'.
	importer originString: aString.

	^ importer import: tsTree
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> tsLanguage [

	^ TSLanguage xml
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> tsParser [

	^ tsParser
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> tsParser: anObject [

	tsParser := anObject
]
