Class {
	#name : 'FASTXMLImporter',
	#superclass : 'TSFASTAbstractImporter',
	#instVars : [
		'representations'
	],
	#category : 'FAST-XML-Tools',
	#package : 'FAST-XML-Tools'
}

{ #category : 'initialization' }
FASTXMLImporter >> deleteTreeSitterParser [

	self tsParser delete
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> editTree: aFastTree using: inputEdit [

	| treeRepresentation |
	"1- create a parser"
	self initialiseTreeSitterParser.

	"2- find treeSitter tree in representation collection"
	treeRepresentation := (self representations select: [ :each |
		                       each fastTree mooseID = aFastTree mooseID ])
		                      first.

	"3- edit treeSitterTree using inputEdits"
	self tsParser
		editTree: treeRepresentation treeSitterTree
		usingInputEdit: inputEdit.

	"4- delete the TreeSitter Parser"
	self deleteTreeSitterParser
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
FASTXMLImporter >> initialiseTreeSitterParser [

	self tsParser: TSParser new.
	self tsParser language: TSLanguage xml .
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> initialize [
	
	super initialize.
	self representations: OrderedCollection new.
	
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> parse: aString [
	
	|tsTree fastTree|
	
	"1- create a parser"
	self initialiseTreeSitterParser.
	
	"2- parseString"
	tsTree := self tsParser parseString: aString.
	
	"3- Convert it to FAST"
	fastTree := self importToFAST: tsTree rootNode usingSourceCode: aString.
		
	"4- store the TSTree + FAST tree in the treeRepresantion object and store it in collection"
	self representations add: ( TreeRepresentation new
											treeSitterTree:tsTree;
											fastTree: fastTree).
	
	"5- delete the TreeSitter Parser"
	self deleteTreeSitterParser.
	
	"6- return fastTree"
	"^ self getASTFromString: aString "
	^ fastTree 		
	
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> parse: aString usingOldTree: aFastTree [

	| treeRepresentation newFastTree newTreeSitterTree |
	
	"1- create a parser"
	self initialiseTreeSitterParser.
	
	"2- find treeSitter tree in representation collection"
	treeRepresentation := (self representations select: [:each | each fastTree mooseID = aFastTree mooseID]) first.
		
	"3- parseString using treeSitter tree"
	newTreeSitterTree := self tsParser parseString: aString usingTree: treeRepresentation treeSitterTree.
	
	"4- convert treeSitter tree to fast"
	newFastTree := self importToFAST: newTreeSitterTree rootNode usingSourceCode: aString.
	
	"5- update the representation collection: fill both new trees"
	treeRepresentation treeSitterTree: newTreeSitterTree; fastTree: newFastTree.
	
	"6- delete the TreeSitter Parser"
	self deleteTreeSitterParser.
	
	"7- return fastTree"
	^ newFastTree.
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> representations [

	^ representations
]

{ #category : 'as yet unclassified' }
FASTXMLImporter >> representations: anObject [

	representations := anObject
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
