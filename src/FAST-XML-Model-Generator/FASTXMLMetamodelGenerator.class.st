Class {
	#name : 'FASTXMLMetamodelGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'entity',
		'_ERROR',
		'tEntity',
		'attDef',
		'attValue',
		'attlistDecl',
		'attribute',
		'cDSect',
		'cDStart',
		'cData',
		'charData',
		'charRef',
		'children',
		'comment',
		'content',
		'contentspec',
		'defaultDecl',
		'doctypedecl',
		'document',
		'eTag',
		'element',
		'elementdecl',
		'emptyElemTag',
		'encName',
		'entityRef',
		'entityValue',
		'enumeration',
		'externalID',
		'gEDecl',
		'mixed',
		'nDataDecl',
		'name',
		'nmtoken',
		'notationDecl',
		'notationType',
		'pEDecl',
		'pEReference',
		'pI',
		'pITarget',
		'prolog',
		'pseudoAtt',
		'pseudoAttValue',
		'pubidLiteral',
		'publicID',
		'sTag',
		'stringType',
		'styleSheetPI',
		'systemLiteral',
		'tokenizedType',
		'uRI',
		'versionNum',
		'xMLDecl',
		'xmlModelPI',
		'tAttType',
		'tEntityDecl',
		'tEnumeratedType',
		'tReference',
		'tMarkupdecl'
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
	super defineClasses.
	entity := builder newClassNamed: #Entity.
	_ERROR := builder newClassNamed: #ERROR.
	attDef := builder newClassNamed: #AttDef.
	attValue := builder newClassNamed: #AttValue.
	attlistDecl := builder newClassNamed: #AttlistDecl.
	attribute := builder newClassNamed: #Attribute.
	cDSect := builder newClassNamed: #CDSect.
	cDStart := builder newClassNamed: #CDStart.
	cData := builder newClassNamed: #CData.
	charData := builder newClassNamed: #CharData.
	charRef := builder newClassNamed: #CharRef.
	children := builder newClassNamed: #Children.
	comment := builder newClassNamed: #Comment.
	content := builder newClassNamed: #Content.
	contentspec := builder newClassNamed: #Contentspec.
	defaultDecl := builder newClassNamed: #DefaultDecl.
	doctypedecl := builder newClassNamed: #Doctypedecl.
	document := builder newClassNamed: #Document.
	eTag := builder newClassNamed: #ETag.
	element := builder newClassNamed: #Element.
	elementdecl := builder newClassNamed: #Elementdecl.
	emptyElemTag := builder newClassNamed: #EmptyElemTag.
	encName := builder newClassNamed: #EncName.
	entityRef := builder newClassNamed: #EntityRef.
	entityValue := builder newClassNamed: #EntityValue.
	enumeration := builder newClassNamed: #Enumeration.
	externalID := builder newClassNamed: #ExternalID.
	gEDecl := builder newClassNamed: #GEDecl.
	mixed := builder newClassNamed: #Mixed.
	nDataDecl := builder newClassNamed: #NDataDecl.
	name := builder newClassNamed: #Name.
	nmtoken := builder newClassNamed: #Nmtoken.
	notationDecl := builder newClassNamed: #NotationDecl.
	notationType := builder newClassNamed: #NotationType.
	pEDecl := builder newClassNamed: #PEDecl.
	pEReference := builder newClassNamed: #PEReference.
	pI := builder newClassNamed: #PI.
	pITarget := builder newClassNamed: #PITarget.
	prolog := builder newClassNamed: #Prolog.
	pseudoAtt := builder newClassNamed: #PseudoAtt.
	pseudoAttValue := builder newClassNamed: #PseudoAttValue.
	pubidLiteral := builder newClassNamed: #PubidLiteral.
	publicID := builder newClassNamed: #PublicID.
	sTag := builder newClassNamed: #STag.
	stringType := builder newClassNamed: #StringType.
	styleSheetPI := builder newClassNamed: #StyleSheetPI.
	systemLiteral := builder newClassNamed: #SystemLiteral.
	tokenizedType := builder newClassNamed: #TokenizedType.
	uRI := builder newClassNamed: #URI.
	versionNum := builder newClassNamed: #VersionNum.
	xMLDecl := builder newClassNamed: #XMLDecl.
	xmlModelPI := builder newClassNamed: #XmlModelPI.
]

{ #category : 'definition' }
FASTXMLMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"
	super defineHierarchy.

	entity --|> tEntity.
	entity --|> #TEntityMetaLevelDependency.

	_ERROR --|> #THasImmediateSource.

	document --|> tEntity.
	document --|> #THasImmediateSource.
	document withPrecedenceOf: #THasImmediateSource.

	attlistDecl --|> tMarkupdecl.
	charRef --|> tReference.
	comment --|> tMarkupdecl.
	elementdecl --|> tMarkupdecl.
	entityRef --|> tReference.
	enumeration --|> tEnumeratedType.
	gEDecl --|> tEntityDecl.
	notationDecl --|> tMarkupdecl.
	notationType --|> tEnumeratedType.
	pEDecl --|> tEntityDecl.
	pEReference --|> tAttType.
	pI --|> tMarkupdecl.
	stringType --|> tAttType.
	tEntityDecl --|> tMarkupdecl.
	tEnumeratedType --|> tAttType.
	tokenizedType --|> tAttType.
]

{ #category : 'definition' }
FASTXMLMetamodelGenerator >> defineRelations [
	super defineRelations.

	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').


	" ATTDEF (COLLECTION) "
	((attDef property: #childrenNodes) comment: '')
		<>-* ((entity property: #attDefOwner) comment: '').


	" ATTVALUE "
	((attValue property: #content) comment: '')
		<>-* ((tReference property: #attValueContentOwner) comment: '').


	" ATTLISTDECL (COLLECTION) "
	((attlistDecl property: #childrenNodes) comment: '')
		<>-* ((entity property: #attlistDeclOwner) comment: '').


	" ATTRIBUTE (COLLECTION) "
	((attribute property: #childrenNodes) comment: '')
		<>-* ((entity property: #attributeOwner) comment: '').


	" CDSECT (COLLECTION) "
	((cDSect property: #childrenNodes) comment: '')
		<>-* ((entity property: #cDSectOwner) comment: '').


	" DEFAULTDECL (SINGLE CHILD) "
	((defaultDecl property: #childrenNode) comment: '')
		<>- ((entity property: #defaultDeclOwner) comment: '').


	" ETAG (SINGLE CHILD) "
	((eTag property: #childrenNode) comment: '')
		<>- ((entity property: #eTagOwner) comment: '').


	" EMPTYELEMTAG (COLLECTION) "
	((emptyElemTag property: #childrenNodes) comment: '')
		<>-* ((entity property: #emptyElemTagOwner) comment: '').


	" ENTITYREF (SINGLE CHILD) "
	((entityRef property: #childrenNode) comment: '')
		<>- ((entity property: #entityRefOwner) comment: '').


	" ENTITYVALUE "
	((entityValue property: #content) comment: '')
		<>-* ((entity property: #entityValueContentOwner) comment: '').


	" ENUMERATION (COLLECTION) "
	((enumeration property: #childrenNodes) comment: '')
		<>-* ((entity property: #enumerationOwner) comment: '').


	" EXTERNALID (COLLECTION) "
	((externalID property: #childrenNodes) comment: '')
		<>-* ((entity property: #externalIDOwner) comment: '').


	" GEDECL (COLLECTION) "
	((gEDecl property: #childrenNodes) comment: '')
		<>-* ((entity property: #gEDeclOwner) comment: '').


	" MIXED (COLLECTION) "
	((mixed property: #childrenNodes) comment: '')
		<>-* ((entity property: #mixedOwner) comment: '').


	" NDATADECL (SINGLE CHILD) "
	((nDataDecl property: #childrenNode) comment: '')
		<>- ((entity property: #nDataDeclOwner) comment: '').


	" NOTATIONDECL (COLLECTION) "
	((notationDecl property: #childrenNodes) comment: '')
		<>-* ((entity property: #notationDeclOwner) comment: '').


	" NOTATIONTYPE (COLLECTION) "
	((notationType property: #childrenNodes) comment: '')
		<>-* ((entity property: #notationTypeOwner) comment: '').


	" PEDECL (COLLECTION) "
	((pEDecl property: #childrenNodes) comment: '')
		<>-* ((entity property: #pEDeclOwner) comment: '').


	" PEREFERENCE (SINGLE CHILD) "
	((pEReference property: #childrenNode) comment: '')
		<>- ((entity property: #pEReferenceOwner) comment: '').


	" PI (SINGLE CHILD) "
	((pI property: #childrenNode) comment: '')
		<>- ((entity property: #pIOwner) comment: '').


	" PSEUDOATT (COLLECTION) "
	((pseudoAtt property: #childrenNodes) comment: '')
		<>-* ((entity property: #pseudoAttOwner) comment: '').


	" PSEUDOATTVALUE "
	((pseudoAttValue property: #content) comment: '')
		<>-* ((tReference property: #pseudoAttValueContentOwner) comment: '').


	" PUBLICID (COLLECTION) "
	((publicID property: #childrenNodes) comment: '')
		<>-* ((entity property: #publicIDOwner) comment: '').


	" STAG (COLLECTION) "
	((sTag property: #childrenNodes) comment: '')
		<>-* ((entity property: #sTagOwner) comment: '').


	" STYLESHEETPI (COLLECTION) "
	((styleSheetPI property: #childrenNodes) comment: '')
		<>-* ((entity property: #styleSheetPIOwner) comment: '').


	" SYSTEMLITERAL (SINGLE CHILD) "
	((systemLiteral property: #childrenNode) comment: '')
		<>- ((entity property: #systemLiteralOwner) comment: '').


	" XMLDECL (COLLECTION) "
	((xMLDecl property: #childrenNodes) comment: '')
		<>-* ((entity property: #xMLDeclOwner) comment: '').


	" XMLMODELPI (COLLECTION) "
	((xmlModelPI property: #childrenNodes) comment: '')
		<>-* ((entity property: #xmlModelPIOwner) comment: '').


	" CHILDREN (COLLECTION) "
	((children property: #childrenNodes) comment: '')
		<>-* ((entity property: #childrenOwner) comment: '').


	" CONTENT (COLLECTION) "
	((content property: #childrenNodes) comment: '')
		<>-* ((entity property: #contentOwner) comment: '').


	" CONTENTSPEC (SINGLE CHILD) "
	((contentspec property: #childrenNode) comment: '')
		<>- ((entity property: #contentspecOwner) comment: '').


	" DOCTYPEDECL (COLLECTION) "
	((doctypedecl property: #childrenNodes) comment: '')
		<>-* ((entity property: #doctypedeclOwner) comment: '').


	" DOCUMENT "
	((document property: #root) comment: '')
		<>- ((element property: #documentRootOwner) comment: '').


	" ELEMENT (COLLECTION) "
	((element property: #childrenNodes) comment: '')
		<>-* ((entity property: #elementOwner) comment: '').


	" ELEMENTDECL (COLLECTION) "
	((elementdecl property: #childrenNodes) comment: '')
		<>-* ((entity property: #elementdeclOwner) comment: '').


	" PROLOG (COLLECTION) "
	((prolog property: #childrenNodes) comment: '')
		<>-* ((entity property: #prologOwner) comment: '').


]

{ #category : 'definition' }
FASTXMLMetamodelGenerator >> defineTraits [
	super defineTraits.
	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.
	tAttType := builder newTraitNamed: #TAttType.
	tEntityDecl := builder newTraitNamed: #TEntityDecl.
	tEnumeratedType := builder newTraitNamed: #TEnumeratedType.
	tReference := builder newTraitNamed: #TReference.
	tMarkupdecl := builder newTraitNamed: #TMarkupdecl.
]
