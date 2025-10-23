Class {
	#name : 'FASTXMLModel',
	#superclass : 'MooseModel',
	#traits : 'FASTTEntityCreator + FASTXMLTEntityCreator',
	#classTraits : 'FASTTEntityCreator classTrait + FASTXMLTEntityCreator classTrait',
	#category : 'FAST-XML-Model-Model',
	#package : 'FAST-XML-Model',
	#tag : 'Model'
}

{ #category : 'accessing' }
FASTXMLModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Core-Model')
]

{ #category : 'meta' }
FASTXMLModel class >> annotation [
	<FMClass: #FASTXMLModel super: #MooseModel>
	<package: #'FAST-XML-Model'>
	<generated>
]
