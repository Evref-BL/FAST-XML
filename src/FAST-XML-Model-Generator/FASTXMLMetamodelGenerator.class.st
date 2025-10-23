Class {
	#name : 'FASTXMLMetamodelGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'eTag',
		'pseudoAtt',
		'xmlModelPI',
		'styleSheetPI',
		'pubidLiteral',
		'enumeration',
		'nDataDecl',
		'versionNum',
		'piTarget',
		'attlistDecl',
		'attribute',
		'cDStart',
		'geDecl',
		'mixed',
		'emptyElemTag',
		'comment',
		'cData',
		'nmtoken',
		'prolog',
		'element',
		'sTag',
		'xmlDecl',
		'content',
		'cDSect',
		'pseudoAttValue',
		'document',
		'attDef',
		'notationType',
		'entityRef',
		'attValue',
		'externalID',
		'elementdecl',
		'publicID',
		'uri',
		'stringType',
		'charData',
		'name',
		'peDecl',
		'tokenizedType',
		'encName',
		'contentspec',
		'defaultDecl',
		'entityValue',
		'notationDecl',
		'peReference',
		'children',
		'pi',
		'systemLiteral',
		'charRef',
		'doctypedecl',
		'entity',
		'tEntity',
		'_ERROR'
	],
	#category : 'FAST-XML-Model-Generator',
	#package : 'FAST-XML-Model-Generator'
}

{ #category : 'accessing' }
FASTXMLMetamodelGenerator class >> packageName [

	^ #'FAST-XML-Model'
]

{ #category : 'accessing' }
FASTXMLMetamodelGenerator class >> prefix [

	^ #FASTXML
]

{ #category : 'accessing' }
FASTXMLMetamodelGenerator class >> submetamodels [

	^ { FASTMetamodelGenerator }
]

{ #category : 'definition' }
FASTXMLMetamodelGenerator >> defineClasses [

	entity := self newClassNamed: #Entity.

	name := builder ensureClassNamed: #Name.
	tokenizedType := builder ensureClassNamed: #TokenizedType.
	nmtoken := builder ensureClassNamed: #Nmtoken.
	uri := builder ensureClassNamed: #URI.
	uri := builder ensureClassNamed: #URI.
	versionNum := builder ensureClassNamed: #VersionNum.
	encName := builder ensureClassNamed: #EncName.
	piTarget := builder ensureClassNamed: #PITarget.
	comment := builder ensureClassNamed: #Comment.
	charData := builder ensureClassNamed: #CharData.
	cData := builder ensureClassNamed: #CData.
	name := builder ensureClassNamed: #Name.
	name := builder ensureClassNamed: #Name.
	document := builder ensureClassNamed: #Document.
	prolog := builder ensureClassNamed: #Prolog.
	xmlDecl := builder ensureClassNamed: #XMLDecl.
	doctypedecl := builder ensureClassNamed: #Doctypedecl.
	element := builder ensureClassNamed: #Element.
	emptyElemTag := builder ensureClassNamed: #EmptyElemTag.
	attribute := builder ensureClassNamed: #Attribute.
	sTag := builder ensureClassNamed: #STag.
	eTag := builder ensureClassNamed: #ETag.
	content := builder ensureClassNamed: #Content.
	cDSect := builder ensureClassNamed: #CDSect.
	cDStart := builder ensureClassNamed: #CDStart.
	styleSheetPI := builder ensureClassNamed: #StyleSheetPI.
	xmlModelPI := builder ensureClassNamed: #XmlModelPI.
	pseudoAtt := builder ensureClassNamed: #PseudoAtt.
	pseudoAttValue := builder ensureClassNamed: #PseudoAttValue.
	elementdecl := builder ensureClassNamed: #Elementdecl.
	contentspec := builder ensureClassNamed: #Contentspec.
	mixed := builder ensureClassNamed: #Mixed.
	children := builder ensureClassNamed: #Children.
	attlistDecl := builder ensureClassNamed: #AttlistDecl.
	attDef := builder ensureClassNamed: #AttDef.
	stringType := builder ensureClassNamed: #StringType.
	notationType := builder ensureClassNamed: #NotationType.
	enumeration := builder ensureClassNamed: #Enumeration.
	defaultDecl := builder ensureClassNamed: #DefaultDecl.
	geDecl := builder ensureClassNamed: #GEDecl.
	peDecl := builder ensureClassNamed: #PEDecl.
	entityValue := builder ensureClassNamed: #EntityValue.
	nDataDecl := builder ensureClassNamed: #NDataDecl.
	notationDecl := builder ensureClassNamed: #NotationDecl.
	peReference := builder ensureClassNamed: #PEReference.
	entityRef := builder ensureClassNamed: #EntityRef.
	charRef := builder ensureClassNamed: #CharRef.
	attValue := builder ensureClassNamed: #AttValue.
	externalID := builder ensureClassNamed: #ExternalID.
	publicID := builder ensureClassNamed: #PublicID.
	systemLiteral := builder ensureClassNamed: #SystemLiteral.
	pubidLiteral := builder ensureClassNamed: #PubidLiteral.
	pi := builder ensureClassNamed: #PI.
	_ERROR := builder ensureClassNamed: #ERROR.

]

{ #category : 'definition' }
FASTXMLMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"

	super defineHierarchy.

	entity --|> tEntity.
	
	document --|> tEntity.
	document --|> #THasImmediateSource.
	document withPrecedenceOf: #THasImmediateSource.
	
	_ERROR --|> #THasImmediateSource.
]

{ #category : 'definition' }
FASTXMLMetamodelGenerator >> defineRelations [

	super defineRelations.
	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').
]

{ #category : 'definition' }
FASTXMLMetamodelGenerator >> defineTraits [

	super defineTraits.

	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.

]
