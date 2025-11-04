Class {
	#name : 'BaselineOfFASTXML',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfFASTXML',
	#package : 'BaselineOfFASTXML'
}

{ #category : 'baselines' }
BaselineOfFASTXML >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec description:
			'Developement version of FAST XML using TreeSitter for Pharo'.
		spec author: 'AlessHosry'.
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : 'accessing' }
BaselineOfFASTXML >> customProjectAttributes [

	^ PackageOrganizer default packages
		  detect: [ :package | package name = 'BaselineOfFamix' ]
		  ifFound: [ #(  ) ]
		  ifNone: [ #( #NeedsMoose ) ]
]

{ #category : 'baselines' }
BaselineOfFASTXML >> defineDependencies: spec [

	spec baseline: 'FAST' with: [
		spec
			loads: #( 'default' );
			repository: 'github://moosetechnology/FAST:v2/src' ].
	spec
		project: 'FASTTool'
		copyFrom: 'FAST'
		with: [ spec loads: #( 'core' 'tools' ) ].

]

{ #category : 'baselines' }
BaselineOfFASTXML >> defineGroups: spec [

	spec
		group: 'core'
		with: #( 'FAST-XML-Model' 
			   'FAST-XML-Model-Generator' );
		group: 'tools' with: #( 'core' 'FAST-XML-Tools' )
]

{ #category : 'baselines' }
BaselineOfFASTXML >> definePackages: spec [

	spec
		package: 'FAST-XML-Model'
		with: [ spec requires: #( 'FAST' ) ];
		package: 'FAST-XML-Model-Generator'; 
		package: 'FAST-XML-Tools'
		with: [ spec requires: #( 'TreeSitter' ) ].

	"In case of no Famix loaded"
	spec for: #NeedsMoose do: [
		spec
			package: 'FAST-XML-Model'
			with: [ spec requires: #( 'FAST' 'Famix' ) ] ]
]
