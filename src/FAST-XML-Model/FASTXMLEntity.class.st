"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `attDefOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLAttDef` | |
| `attlistDeclOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLAttlistDecl` | |
| `attributeOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLAttribute` | |
| `cDSectOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLCDSect` | |
| `childrenOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLChildren` | |
| `contentOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLContent` | |
| `contentspecOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLContentspec` | |
| `defaultDeclOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLDefaultDecl` | |
| `doctypedeclOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLDoctypedecl` | |
| `eTagOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLETag` | |
| `elementOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLElement` | |
| `elementdeclOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLElementdecl` | |
| `emptyElemTagOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLEmptyElemTag` | |
| `entityRefOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLEntityRef` | |
| `entityValueContentOwner` | `FASTXMLEntity` | `content` | `FASTXMLEntityValue` | |
| `enumerationOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLEnumeration` | |
| `externalIDOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLExternalID` | |
| `gEDeclOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLGEDecl` | |
| `genericParent` | `FASTXMLEntity` | `genericChildren` | `FASTXMLEntity` | |
| `mixedOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLMixed` | |
| `nDataDeclOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLNDataDecl` | |
| `notationDeclOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLNotationDecl` | |
| `notationTypeOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLNotationType` | |
| `pEDeclOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLPEDecl` | |
| `pEReferenceOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLPEReference` | |
| `pIOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLPI` | |
| `prologOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLProlog` | |
| `pseudoAttOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLPseudoAtt` | |
| `publicIDOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLPublicID` | |
| `sTagOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLSTag` | |
| `styleSheetPIOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLStyleSheetPI` | |
| `systemLiteralOwner` | `FASTXMLEntity` | `childrenNode` | `FASTXMLSystemLiteral` | |
| `xMLDeclOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLXMLDecl` | |
| `xmlModelPIOwner` | `FASTXMLEntity` | `childrenNodes` | `FASTXMLXmlModelPI` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTXMLEntity` | `genericParent` | `FASTXMLEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTXMLEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity + TEntityMetaLevelDependency',
	#classTraits : 'FASTTEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#attDefOwner => FMOne type: #FASTXMLAttDef opposite: #childrenNodes',
		'#attlistDeclOwner => FMOne type: #FASTXMLAttlistDecl opposite: #childrenNodes',
		'#attributeOwner => FMOne type: #FASTXMLAttribute opposite: #childrenNodes',
		'#cDSectOwner => FMOne type: #FASTXMLCDSect opposite: #childrenNodes',
		'#childrenOwner => FMOne type: #FASTXMLChildren opposite: #childrenNodes',
		'#contentOwner => FMOne type: #FASTXMLContent opposite: #childrenNodes',
		'#contentspecOwner => FMOne type: #FASTXMLContentspec opposite: #childrenNode',
		'#defaultDeclOwner => FMOne type: #FASTXMLDefaultDecl opposite: #childrenNode',
		'#doctypedeclOwner => FMOne type: #FASTXMLDoctypedecl opposite: #childrenNodes',
		'#eTagOwner => FMOne type: #FASTXMLETag opposite: #childrenNode',
		'#elementOwner => FMOne type: #FASTXMLElement opposite: #childrenNodes',
		'#elementdeclOwner => FMOne type: #FASTXMLElementdecl opposite: #childrenNodes',
		'#emptyElemTagOwner => FMOne type: #FASTXMLEmptyElemTag opposite: #childrenNodes',
		'#entityRefOwner => FMOne type: #FASTXMLEntityRef opposite: #childrenNode',
		'#entityValueContentOwner => FMOne type: #FASTXMLEntityValue opposite: #content',
		'#enumerationOwner => FMOne type: #FASTXMLEnumeration opposite: #childrenNodes',
		'#externalIDOwner => FMOne type: #FASTXMLExternalID opposite: #childrenNodes',
		'#gEDeclOwner => FMOne type: #FASTXMLGEDecl opposite: #childrenNodes',
		'#genericChildren => FMMany type: #FASTXMLEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTXMLEntity opposite: #genericChildren',
		'#mixedOwner => FMOne type: #FASTXMLMixed opposite: #childrenNodes',
		'#nDataDeclOwner => FMOne type: #FASTXMLNDataDecl opposite: #childrenNode',
		'#notationDeclOwner => FMOne type: #FASTXMLNotationDecl opposite: #childrenNodes',
		'#notationTypeOwner => FMOne type: #FASTXMLNotationType opposite: #childrenNodes',
		'#pEDeclOwner => FMOne type: #FASTXMLPEDecl opposite: #childrenNodes',
		'#pEReferenceOwner => FMOne type: #FASTXMLPEReference opposite: #childrenNode',
		'#pIOwner => FMOne type: #FASTXMLPI opposite: #childrenNode',
		'#prologOwner => FMOne type: #FASTXMLProlog opposite: #childrenNodes',
		'#pseudoAttOwner => FMOne type: #FASTXMLPseudoAtt opposite: #childrenNodes',
		'#publicIDOwner => FMOne type: #FASTXMLPublicID opposite: #childrenNodes',
		'#sTagOwner => FMOne type: #FASTXMLSTag opposite: #childrenNodes',
		'#styleSheetPIOwner => FMOne type: #FASTXMLStyleSheetPI opposite: #childrenNodes',
		'#systemLiteralOwner => FMOne type: #FASTXMLSystemLiteral opposite: #childrenNode',
		'#xMLDeclOwner => FMOne type: #FASTXMLXMLDecl opposite: #childrenNodes',
		'#xmlModelPIOwner => FMOne type: #FASTXMLXmlModelPI opposite: #childrenNodes'
	],
	#category : 'FAST-XML-Model-Entities',
	#package : 'FAST-XML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTXMLEntity class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-XML-Model'>
	<generated>
	<abstract>
]

{ #category : 'testing' }
FASTXMLEntity class >> isAbstract [

	<ignoreForCoverage>
	<generated>
	^ self == FASTXMLEntity
]

{ #category : 'meta' }
FASTXMLEntity class >> metamodel [

	<ignoreForCoverage>
	<generated>
	^ FASTXMLModel metamodel
]

{ #category : 'adding' }
FASTXMLEntity >> addGenericChild: anObject [

	<ignoreForCoverage>
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> attDefOwner [
	"Relation named: #attDefOwner type: #FASTXMLAttDef opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ attDefOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> attDefOwner: anObject [

	<ignoreForCoverage>
	<generated>
	attDefOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> attlistDeclOwner [
	"Relation named: #attlistDeclOwner type: #FASTXMLAttlistDecl opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ attlistDeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> attlistDeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	attlistDeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> attributeOwner [
	"Relation named: #attributeOwner type: #FASTXMLAttribute opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ attributeOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> attributeOwner: anObject [

	<ignoreForCoverage>
	<generated>
	attributeOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> cDSectOwner [
	"Relation named: #cDSectOwner type: #FASTXMLCDSect opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ cDSectOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> cDSectOwner: anObject [

	<ignoreForCoverage>
	<generated>
	cDSectOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> childrenOwner [
	"Relation named: #childrenOwner type: #FASTXMLChildren opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ childrenOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> childrenOwner: anObject [

	<ignoreForCoverage>
	<generated>
	childrenOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> contentOwner [
	"Relation named: #contentOwner type: #FASTXMLContent opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ contentOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> contentOwner: anObject [

	<ignoreForCoverage>
	<generated>
	contentOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> contentspecOwner [
	"Relation named: #contentspecOwner type: #FASTXMLContentspec opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ contentspecOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> contentspecOwner: anObject [

	<ignoreForCoverage>
	<generated>
	contentspecOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> defaultDeclOwner [
	"Relation named: #defaultDeclOwner type: #FASTXMLDefaultDecl opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ defaultDeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> defaultDeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	defaultDeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> doctypedeclOwner [
	"Relation named: #doctypedeclOwner type: #FASTXMLDoctypedecl opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ doctypedeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> doctypedeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	doctypedeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> eTagOwner [
	"Relation named: #eTagOwner type: #FASTXMLETag opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ eTagOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> eTagOwner: anObject [

	<ignoreForCoverage>
	<generated>
	eTagOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> elementOwner [
	"Relation named: #elementOwner type: #FASTXMLElement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ elementOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> elementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	elementOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> elementdeclOwner [
	"Relation named: #elementdeclOwner type: #FASTXMLElementdecl opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ elementdeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> elementdeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	elementdeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> emptyElemTagOwner [
	"Relation named: #emptyElemTagOwner type: #FASTXMLEmptyElemTag opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ emptyElemTagOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> emptyElemTagOwner: anObject [

	<ignoreForCoverage>
	<generated>
	emptyElemTagOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> entityRefOwner [
	"Relation named: #entityRefOwner type: #FASTXMLEntityRef opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ entityRefOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> entityRefOwner: anObject [

	<ignoreForCoverage>
	<generated>
	entityRefOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> entityValueContentOwner [
	"Relation named: #entityValueContentOwner type: #FASTXMLEntityValue opposite: #content"

	<ignoreForCoverage>
	<generated>
	<container>
	^ entityValueContentOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> entityValueContentOwner: anObject [

	<ignoreForCoverage>
	<generated>
	entityValueContentOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> enumerationOwner [
	"Relation named: #enumerationOwner type: #FASTXMLEnumeration opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ enumerationOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> enumerationOwner: anObject [

	<ignoreForCoverage>
	<generated>
	enumerationOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> externalIDOwner [
	"Relation named: #externalIDOwner type: #FASTXMLExternalID opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ externalIDOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> externalIDOwner: anObject [

	<ignoreForCoverage>
	<generated>
	externalIDOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> gEDeclOwner [
	"Relation named: #gEDeclOwner type: #FASTXMLGEDecl opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ gEDeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> gEDeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	gEDeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTXMLEntity opposite: #genericParent"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTXMLEntity >> genericChildren: anObject [

	<ignoreForCoverage>
	<generated>
	genericChildren value: anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> genericParent [
	"Relation named: #genericParent type: #FASTXMLEntity opposite: #genericChildren"

	<ignoreForCoverage>
	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTXMLEntity >> genericParent: anObject [

	<ignoreForCoverage>
	<generated>
	genericParent := anObject
]

{ #category : 'testing' }
FASTXMLEntity >> hasImmediateSource [

	<ignoreForCoverage>
	<generated>
	^ false
]

{ #category : 'accessing' }
FASTXMLEntity >> mixedOwner [
	"Relation named: #mixedOwner type: #FASTXMLMixed opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ mixedOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> mixedOwner: anObject [

	<ignoreForCoverage>
	<generated>
	mixedOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> nDataDeclOwner [
	"Relation named: #nDataDeclOwner type: #FASTXMLNDataDecl opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ nDataDeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> nDataDeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	nDataDeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> notationDeclOwner [
	"Relation named: #notationDeclOwner type: #FASTXMLNotationDecl opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ notationDeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> notationDeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	notationDeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> notationTypeOwner [
	"Relation named: #notationTypeOwner type: #FASTXMLNotationType opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ notationTypeOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> notationTypeOwner: anObject [

	<ignoreForCoverage>
	<generated>
	notationTypeOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> pEDeclOwner [
	"Relation named: #pEDeclOwner type: #FASTXMLPEDecl opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ pEDeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> pEDeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	pEDeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> pEReferenceOwner [
	"Relation named: #pEReferenceOwner type: #FASTXMLPEReference opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ pEReferenceOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> pEReferenceOwner: anObject [

	<ignoreForCoverage>
	<generated>
	pEReferenceOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> pIOwner [
	"Relation named: #pIOwner type: #FASTXMLPI opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ pIOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> pIOwner: anObject [

	<ignoreForCoverage>
	<generated>
	pIOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> prologOwner [
	"Relation named: #prologOwner type: #FASTXMLProlog opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ prologOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> prologOwner: anObject [

	<ignoreForCoverage>
	<generated>
	prologOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> pseudoAttOwner [
	"Relation named: #pseudoAttOwner type: #FASTXMLPseudoAtt opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ pseudoAttOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> pseudoAttOwner: anObject [

	<ignoreForCoverage>
	<generated>
	pseudoAttOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> publicIDOwner [
	"Relation named: #publicIDOwner type: #FASTXMLPublicID opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ publicIDOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> publicIDOwner: anObject [

	<ignoreForCoverage>
	<generated>
	publicIDOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> sTagOwner [
	"Relation named: #sTagOwner type: #FASTXMLSTag opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ sTagOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> sTagOwner: anObject [

	<ignoreForCoverage>
	<generated>
	sTagOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> styleSheetPIOwner [
	"Relation named: #styleSheetPIOwner type: #FASTXMLStyleSheetPI opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ styleSheetPIOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> styleSheetPIOwner: anObject [

	<ignoreForCoverage>
	<generated>
	styleSheetPIOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> systemLiteralOwner [
	"Relation named: #systemLiteralOwner type: #FASTXMLSystemLiteral opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ systemLiteralOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> systemLiteralOwner: anObject [

	<ignoreForCoverage>
	<generated>
	systemLiteralOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> xMLDeclOwner [
	"Relation named: #xMLDeclOwner type: #FASTXMLXMLDecl opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ xMLDeclOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> xMLDeclOwner: anObject [

	<ignoreForCoverage>
	<generated>
	xMLDeclOwner := anObject
]

{ #category : 'accessing' }
FASTXMLEntity >> xmlModelPIOwner [
	"Relation named: #xmlModelPIOwner type: #FASTXMLXmlModelPI opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ xmlModelPIOwner
]

{ #category : 'accessing' }
FASTXMLEntity >> xmlModelPIOwner: anObject [

	<ignoreForCoverage>
	<generated>
	xmlModelPIOwner := anObject
]
