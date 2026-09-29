Class {
	#name : 'FASTXMLImporterTest',
	#superclass : 'TSFASTAbstractImporterTest',
	#category : 'FAST-XML-Model-Tests',
	#package : 'FAST-XML-Model-Tests'
}

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedAddressxml [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedAddressxml 	"

	self parse: '<?xml version = "1.0" encoding = "UTF-8" standalone = "no" ?>
<!DOCTYPE address SYSTEM "address.dtd">
<address>
  <name>Tanmay Patil</name>
  <company>TutorialsPoint</company>
  <phone>(011) 123-4567</phone>
</address>;'.

	self assert: (fast allWithType: FASTXMLCharData) size equals: 7.
	self assert: (fast allWithType: FASTXMLContent) size equals: 4.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 4.
	self assert: (fast allWithType: FASTXMLElement) size equals: 4.
	self assert: (fast allWithType: FASTXMLEncName) size equals: 1.
	self assert: (fast allWithType: FASTXMLExternalID) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 9.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 4.
	self assert: (fast allWithType: FASTXMLSystemLiteral) size equals: 1.
	self assert: (fast allWithType: FASTXMLURI) size equals: 1.
	self assert: (fast allWithType: FASTXMLVersionNum) size equals: 1.
	self assert: (fast allWithType: FASTXMLXMLDecl) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<?xml version = "1.0" encoding = "UTF-8" standalone = "no" ?>
<!DOCTYPE address SYSTEM "address.dtd">
<address>
  <name>Tanmay Patil</name>
  <company>TutorialsPoint</company>
  <phone>(011) 123-4567</phone>
</address>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<?xml version = "1.0" encoding = "UTF-8" standalone = "no" ?>
<!DOCTYPE address SYSTEM "address.dtd">
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<?xml version = "1.0" encoding = "UTF-8" standalone = "no" ?>'.
			self assert: (self topEntity isOfType: FASTXMLXMLDecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '1.0'.
				self assert: (self topEntity isOfType: FASTXMLVersionNum).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'UTF-8'.
				self assert: (self topEntity isOfType: FASTXMLEncName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE address SYSTEM "address.dtd">'.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'address'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'SYSTEM "address.dtd"'.
				self assert: (self topEntity isOfType: FASTXMLExternalID).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"address.dtd"'.
					self assert: (self topEntity isOfType: FASTXMLSystemLiteral).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'address.dtd'.
						self assert: (self topEntity isOfType: FASTXMLURI).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<address>
  <name>Tanmay Patil</name>
  <company>TutorialsPoint</company>
  <phone>(011) 123-4567</phone>
</address>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<address>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'address'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '
  <name>Tanmay Patil</name>
  <company>TutorialsPoint</company>
  <phone>(011) 123-4567</phone>
' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 7.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '<name>Tanmay Patil</name>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<name>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'name'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Tanmay Patil'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Tanmay Patil'.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</name>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'name'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '<company>TutorialsPoint</company>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<company>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'company'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'TutorialsPoint'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'TutorialsPoint'.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</company>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'company'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 6).
					self assert: self topEntity sourceCode equals: '<phone>(011) 123-4567</phone>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<phone>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'phone'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(011) 123-4567'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '(011) 123-4567'.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</phone>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'phone'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 7).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</address>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'address'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<?xml version = "1.0" encoding = "UTF-8" standalone = "no" ?>
<!DOCTYPE address SYSTEM "address.dtd">
<address>
  <name>Tanmay Patil</name>
  <company>TutorialsPoint</company>
  <phone>(011) 123-4567</phone>
</address>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedCDATASection [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCDATASection 	"

	self parse: '<greeting>
<![CDATA[<greeting>Hello, world!</greeting>]]>
</greeting>;'.

	self assert: (fast allWithType: FASTXMLCDSect) size equals: 1.
	self assert: (fast allWithType: FASTXMLCDStart) size equals: 1.
	self assert: (fast allWithType: FASTXMLCData) size equals: 1.
	self assert: (fast allWithType: FASTXMLCharData) size equals: 2.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 2.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<greeting>
<![CDATA[<greeting>Hello, world!</greeting>]]>
</greeting>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<greeting>
<![CDATA[<greeting>Hello, world!</greeting>]]>
</greeting>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<greeting>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'greeting'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '
<![CDATA[<greeting>Hello, world!</greeting>]]>
' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '<![CDATA[<greeting>Hello, world!</greeting>]]>'.
					self assert: (self topEntity isOfType: FASTXMLCDSect).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<![CDATA['.
						self assert: (self topEntity isOfType: FASTXMLCDStart).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '<greeting>Hello, world!</greeting>'.
						self assert: (self topEntity isOfType: FASTXMLCData).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</greeting>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'greeting'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<greeting>
<![CDATA[<greeting>Hello, world!</greeting>]]>
</greeting>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedClosingBracketInCharData22 [
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedClosingBracketInCharData22 	"

	<generated>
	self parse: '<test>]</test>;'.

	self assert: (fast allWithType: FASTXMLCharData) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 2.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<test>]</test>;'.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).

	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.

	"Testing value of monovalue relation root"
	self assert: self topEntity root isNotNil.

	stack push: self topEntity root.
	self assert: self topEntity sourceCode equals: '<test>]</test>'.
	self assert: (self topEntity isOfType: FASTXMLElement).

	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.

	stack push: (stack top childrenNodes at: 1).
	self assert: self topEntity sourceCode equals: '<test>'.
	self assert: (self topEntity isOfType: FASTXMLSTag).

	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.

	stack push: (stack top childrenNodes at: 1).
	self assert: self topEntity sourceCode equals: 'test'.
	self assert: (self topEntity isOfType: FASTXMLName).
	stack pop.
	stack pop.

	stack push: (stack top childrenNodes at: 2).
	self assert: self topEntity sourceCode equals: ']'.
	self assert: (self topEntity isOfType: FASTXMLContent).

	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 1.

	stack push: (stack top childrenNodes at: 1).
	self assert: self topEntity sourceCode equals: ']'.
	self assert: (self topEntity isOfType: FASTXMLCharData).
	stack pop.
	stack pop.

	stack push: (stack top childrenNodes at: 3).
	self assert: self topEntity sourceCode equals: '</test>'.
	self assert: (self topEntity isOfType: FASTXMLETag).

	"Testing value of monovalue relation childrenNode"
	self assert: self topEntity childrenNode isNotNil.

	stack push: self topEntity childrenNode.
	self assert: self topEntity sourceCode equals: 'test'.
	self assert: (self topEntity isOfType: FASTXMLName).
	stack pop.
	stack pop.
	stack pop.
	self assert: self topEntity source equals: '<test>]</test>;'
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedComment [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedComment 	"

	self parse: '<!-- declarations for <head> & <body> -->
<greeting/>;'.

	self assert: (fast allWithType: FASTXMLComment) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLEmptyElemTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 1.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!-- declarations for <head> & <body> -->
<greeting/>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode trimBoth equals: '<!-- declarations for <head> & <body> -->
' trimBoth.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<!-- declarations for <head> & <body> -->'.
			self assert: (self topEntity isOfType: FASTXMLComment).
			stack pop.
		stack pop.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<greeting/>'.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<greeting/>'.
				self assert: (self topEntity isOfType: FASTXMLEmptyElemTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'greeting'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<!-- declarations for <head> & <body> -->
<greeting/>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedEmptyCDATA7 [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedEmptyCDATA7 	"

	self parse: '<field name="foo" type="text"><![CDATA[]]></field>;'.

	self assert: (fast allWithType: FASTXMLAttValue) size equals: 2.
	self assert: (fast allWithType: FASTXMLAttribute) size equals: 2.
	self assert: (fast allWithType: FASTXMLCDSect) size equals: 1.
	self assert: (fast allWithType: FASTXMLCDStart) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 4.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<field name="foo" type="text"><![CDATA[]]></field>;'.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<field name="foo" type="text"><![CDATA[]]></field>'.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<field name="foo" type="text">'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'field'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'name="foo"'.
					self assert: (self topEntity isOfType: FASTXMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'name'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"foo"'.
						self assert: (self topEntity isOfType: FASTXMLAttValue).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'type="text"'.
					self assert: (self topEntity isOfType: FASTXMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'type'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"text"'.
						self assert: (self topEntity isOfType: FASTXMLAttValue).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<![CDATA[]]>'.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<![CDATA[]]>'.
					self assert: (self topEntity isOfType: FASTXMLCDSect).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<![CDATA['.
						self assert: (self topEntity isOfType: FASTXMLCDStart).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</field>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'field'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<field name="foo" type="text"><![CDATA[]]></field>;'
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedInvalidCharacterDataCDATA [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidCharacterDataCDATA 	"

	self parse: '<cdata>
<![CDATA[ ]]> is invalid ]]>
</cdata>;'.

	self assert: (fast allWithType: FASTXMLCDSect) size equals: 1.
	self assert: (fast allWithType: FASTXMLCDStart) size equals: 1.
	self assert: (fast allWithType: FASTXMLCData) size equals: 1.
	self assert: (fast allWithType: FASTXMLCharData) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 2.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 4.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<cdata>
<![CDATA[ ]]> is invalid ]]>
</cdata>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<cdata>
<![CDATA[ ]]> is invalid ]]>
</cdata>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<cdata>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'cdata'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '
<![CDATA[ ]]>' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '<![CDATA[ ]]>'.
					self assert: (self topEntity isOfType: FASTXMLCDSect).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<![CDATA['.
						self assert: (self topEntity isOfType: FASTXMLCDStart).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: ' '.
						self assert: (self topEntity isOfType: FASTXMLCData).
						stack pop.
					stack pop.
				stack pop.
			
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '</cdata>'.
					self assert: (self topEntity isOfType: FASTXMLETag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'cdata'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			self assert: self topEntity source equals: '<cdata>
<![CDATA[ ]]> is invalid ]]>
</cdata>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedInvalidCharacterDataRaw [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidCharacterDataRaw 	"

	self parse: '<raw>
This is not valid: ]]>
</raw>;'.

	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 2.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 6.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<raw>
This is not valid: ]]>
</raw>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<raw>
This is not valid: ]]>
</raw>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<raw>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'raw'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '</raw>'.
					self assert: (self topEntity isOfType: FASTXMLETag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'raw'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			self assert: self topEntity source equals: '<raw>
This is not valid: ]]>
</raw>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedInvalidComment [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidComment 	"

	self parse: '<error>
<!-- invalid -- -->
</error>;'.

	self assert: (fast allWithType: FASTXMLCharData) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 2.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 3.
	self assert: (fast allWithType: FASTXMLNmtoken) size equals: 3.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<error>
<!-- invalid -- -->
</error>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<error>
<!-- invalid -- -->
</error>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<error>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'error'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '</error>'.
					self assert: (self topEntity isOfType: FASTXMLETag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'error'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			self assert: self topEntity source equals: '<error>
<!-- invalid -- -->
</error>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedInvalidProcessingInstruction [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidProcessingInstruction 	"

	self parse: '<error>
<?bar is ?> invalid?>
</error>;'.

	self assert: (fast allWithType: FASTXMLCharData) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 3.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 4.
	self assert: (fast allWithType: FASTXMLPITarget) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<error>
<?bar is ?> invalid?>
</error>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<error>
<?bar is ?> invalid?>
</error>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<error>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'error'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '</error>'.
					self assert: (self topEntity isOfType: FASTXMLETag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'error'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			self assert: self topEntity source equals: '<error>
<?bar is ?> invalid?>
</error>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedInvalidXMLDeclaration [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInvalidXMLDeclaration 	"

	self parse: '<?xml is invalid?>
<error/>;'.

	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 3.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLEmptyElemTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<?xml is invalid?>
<error/>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
			"Testing value of monovalue relation root"
			self assert: self topEntity root isNotNil.

				stack push: self topEntity root.
				self assert: self topEntity sourceCode equals: '<error/>'.
				self assert: (self topEntity isOfType: FASTXMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<error/>'.
					self assert: (self topEntity isOfType: FASTXMLEmptyElemTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'error'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			self assert: self topEntity source equals: '<?xml is invalid?>
<error/>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedMismatchedTagName [
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMismatchedTagName 	"

	<generated>
	self parse: '<From>Jani</from>;'.
	self assert: (fast allWithType: FASTXMLCharData) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 2.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedNotexml [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNotexml 	"

	self parse: '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE note [
<!ELEMENT note (to,from,heading,body,footer?)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)>
<!ELEMENT footer (#PCDATA)>
<!ENTITY nbsp "&#xA0;">
<!ENTITY writer "Writer: Donald Duck.">
<!ENTITY copyright "Copyright: W3Schools.">
]>
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don''t forget me this weekend!</body>
  <footer>&writer;&nbsp;&copyright;</footer>
</note>;'.

	self assert: (fast allWithType: FASTXMLCharData) size equals: 10.
	self assert: (fast allWithType: FASTXMLCharRef) size equals: 1.
	self assert: (fast allWithType: FASTXMLChildren) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 6.
	self assert: (fast allWithType: FASTXMLContentspec) size equals: 6.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 6.
	self assert: (fast allWithType: FASTXMLElement) size equals: 6.
	self assert: (fast allWithType: FASTXMLElementdecl) size equals: 6.
	self assert: (fast allWithType: FASTXMLEncName) size equals: 1.
	self assert: (fast allWithType: FASTXMLEntityRef) size equals: 3.
	self assert: (fast allWithType: FASTXMLEntityValue) size equals: 3.
	self assert: (fast allWithType: FASTXMLGEDecl) size equals: 3.
	self assert: (fast allWithType: FASTXMLMixed) size equals: 5.
	self assert: (fast allWithType: FASTXMLName) size equals: 30.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 6.
	self assert: (fast allWithType: FASTXMLVersionNum) size equals: 1.
	self assert: (fast allWithType: FASTXMLXMLDecl) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE note [
<!ELEMENT note (to,from,heading,body,footer?)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)>
<!ELEMENT footer (#PCDATA)>
<!ENTITY nbsp "&#xA0;">
<!ENTITY writer "Writer: Donald Duck.">
<!ENTITY copyright "Copyright: W3Schools.">
]>
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don''t forget me this weekend!</body>
  <footer>&writer;&nbsp;&copyright;</footer>
</note>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE note [
<!ELEMENT note (to,from,heading,body,footer?)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)>
<!ELEMENT footer (#PCDATA)>
<!ENTITY nbsp "&#xA0;">
<!ENTITY writer "Writer: Donald Duck.">
<!ENTITY copyright "Copyright: W3Schools.">
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<?xml version="1.0" encoding="UTF-8"?>'.
			self assert: (self topEntity isOfType: FASTXMLXMLDecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '1.0'.
				self assert: (self topEntity isOfType: FASTXMLVersionNum).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'UTF-8'.
				self assert: (self topEntity isOfType: FASTXMLEncName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE note [
<!ELEMENT note (to,from,heading,body,footer?)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)>
<!ELEMENT footer (#PCDATA)>
<!ENTITY nbsp "&#xA0;">
<!ENTITY writer "Writer: Donald Duck.">
<!ENTITY copyright "Copyright: W3Schools.">
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 10.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'note'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!ELEMENT note (to,from,heading,body,footer?)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'note'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(to,from,heading,body,footer?)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(to,from,heading,body,footer?)'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 5.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'to'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'from'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'heading'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: 'body'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: 'footer'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<!ELEMENT to (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'to'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<!ELEMENT from (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'from'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '<!ELEMENT heading (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'heading'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 6).
				self assert: self topEntity sourceCode equals: '<!ELEMENT body (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'body'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 7).
				self assert: self topEntity sourceCode equals: '<!ELEMENT footer (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'footer'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 8).
				self assert: self topEntity sourceCode equals: '<!ENTITY nbsp "&#xA0;">'.
				self assert: (self topEntity isOfType: FASTXMLGEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nbsp'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"&#xA0;"'.
					self assert: (self topEntity isOfType: FASTXMLEntityValue).
					
					"Testing value of multivalued relation content"
					self assert: self topEntity content size equals: 1.
					
						stack push: (stack top content at: 1).
						self assert: self topEntity sourceCode equals: '&#xA0;'.
						self assert: (self topEntity isOfType: FASTXMLCharRef).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 9).
				self assert: self topEntity sourceCode equals: '<!ENTITY writer "Writer: Donald Duck.">'.
				self assert: (self topEntity isOfType: FASTXMLGEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'writer'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"Writer: Donald Duck."'.
					self assert: (self topEntity isOfType: FASTXMLEntityValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 10).
				self assert: self topEntity sourceCode equals: '<!ENTITY copyright "Copyright: W3Schools.">'.
				self assert: (self topEntity isOfType: FASTXMLGEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'copyright'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"Copyright: W3Schools."'.
					self assert: (self topEntity isOfType: FASTXMLEntityValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don''t forget me this weekend!</body>
  <footer>&writer;&nbsp;&copyright;</footer>
</note>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<note>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'note'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don''t forget me this weekend!</body>
  <footer>&writer;&nbsp;&copyright;</footer>
' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 11.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '<to>Tove</to>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<to>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'to'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Tove'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Tove'.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</to>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'to'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '<from>Jani</from>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<from>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'from'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Jani'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Jani'.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</from>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'from'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 6).
					self assert: self topEntity sourceCode equals: '<heading>Reminder</heading>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<heading>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'heading'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Reminder'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Reminder'.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</heading>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'heading'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 7).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 8).
					self assert: self topEntity sourceCode equals: '<body>Don''t forget me this weekend!</body>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<body>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'body'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Don''t forget me this weekend!'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'Don''t forget me this weekend!'.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</body>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'body'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 9).
					self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 10).
					self assert: self topEntity sourceCode equals: '<footer>&writer;&nbsp;&copyright;</footer>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<footer>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'footer'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '&writer;&nbsp;&copyright;'.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&writer;'.
							self assert: (self topEntity isOfType: FASTXMLEntityRef).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'writer'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '&nbsp;'.
							self assert: (self topEntity isOfType: FASTXMLEntityRef).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'nbsp'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '&copyright;'.
							self assert: (self topEntity isOfType: FASTXMLEntityRef).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'copyright'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</footer>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'footer'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 11).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</note>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'note'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE note [
<!ELEMENT note (to,from,heading,body,footer?)>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)>
<!ELEMENT footer (#PCDATA)>
<!ENTITY nbsp "&#xA0;">
<!ENTITY writer "Writer: Donald Duck.">
<!ENTITY copyright "Copyright: W3Schools.">
]>
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don''t forget me this weekend!</body>
  <footer>&writer;&nbsp;&copyright;</footer>
</note>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedPrologAndDocumentType [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPrologAndDocumentType 	"

	self parse: '<?xml version="1.1" encoding="UTF-8" ?>
<!DOCTYPE greeting [
  <!ELEMENT greeting (#PCDATA)>
]>
<greeting>Hello, world!</greeting>;'.

	self assert: (fast allWithType: FASTXMLCharData) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLContentspec) size equals: 1.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLElementdecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLEncName) size equals: 1.
	self assert: (fast allWithType: FASTXMLMixed) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 4.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLVersionNum) size equals: 1.
	self assert: (fast allWithType: FASTXMLXMLDecl) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<?xml version="1.1" encoding="UTF-8" ?>
<!DOCTYPE greeting [
  <!ELEMENT greeting (#PCDATA)>
]>
<greeting>Hello, world!</greeting>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<?xml version="1.1" encoding="UTF-8" ?>
<!DOCTYPE greeting [
  <!ELEMENT greeting (#PCDATA)>
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<?xml version="1.1" encoding="UTF-8" ?>'.
			self assert: (self topEntity isOfType: FASTXMLXMLDecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '1.1'.
				self assert: (self topEntity isOfType: FASTXMLVersionNum).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'UTF-8'.
				self assert: (self topEntity isOfType: FASTXMLEncName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE greeting [
  <!ELEMENT greeting (#PCDATA)>
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'greeting'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!ELEMENT greeting (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'greeting'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<greeting>Hello, world!</greeting>'.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<greeting>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'greeting'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Hello, world!'.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Hello, world!'.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</greeting>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'greeting'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<?xml version="1.1" encoding="UTF-8" ?>
<!DOCTYPE greeting [
  <!ELEMENT greeting (#PCDATA)>
]>
<greeting>Hello, world!</greeting>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedXMLModel [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedXMLModel 	"

	self parse: '<?xml version="1.0"?>
<?xml-model href="http://www.docbook.org/xml/5.0/rng/docbook.rng"?>
<?xml-model href="http://www.docbook.org/xml/5.0/xsd/docbook.xsd"?>
<book xmlns="http://docbook.org/ns/docbook">
 …
</book>;'.

	self assert: (fast allWithType: FASTXMLAttValue) size equals: 1.
	self assert: (fast allWithType: FASTXMLAttribute) size equals: 1.
	self assert: (fast allWithType: FASTXMLCharData) size equals: 1.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 5.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLPseudoAtt) size equals: 2.
	self assert: (fast allWithType: FASTXMLPseudoAttValue) size equals: 2.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLVersionNum) size equals: 1.
	self assert: (fast allWithType: FASTXMLXMLDecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLXmlModelPI) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<?xml version="1.0"?>
<?xml-model href="http://www.docbook.org/xml/5.0/rng/docbook.rng"?>
<?xml-model href="http://www.docbook.org/xml/5.0/xsd/docbook.xsd"?>
<book xmlns="http://docbook.org/ns/docbook">
 …
</book>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<?xml version="1.0"?>
<?xml-model href="http://www.docbook.org/xml/5.0/rng/docbook.rng"?>
<?xml-model href="http://www.docbook.org/xml/5.0/xsd/docbook.xsd"?>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<?xml version="1.0"?>'.
			self assert: (self topEntity isOfType: FASTXMLXMLDecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '1.0'.
				self assert: (self topEntity isOfType: FASTXMLVersionNum).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<?xml-model href="http://www.docbook.org/xml/5.0/rng/docbook.rng"?>'.
			self assert: (self topEntity isOfType: FASTXMLXmlModelPI).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'href="http://www.docbook.org/xml/5.0/rng/docbook.rng"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'href'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"http://www.docbook.org/xml/5.0/rng/docbook.rng"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '<?xml-model href="http://www.docbook.org/xml/5.0/xsd/docbook.xsd"?>'.
			self assert: (self topEntity isOfType: FASTXMLXmlModelPI).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'href="http://www.docbook.org/xml/5.0/xsd/docbook.xsd"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'href'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"http://www.docbook.org/xml/5.0/xsd/docbook.xsd"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<book xmlns="http://docbook.org/ns/docbook">
 …
</book>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<book xmlns="http://docbook.org/ns/docbook">'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'book'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'xmlns="http://docbook.org/ns/docbook"'.
					self assert: (self topEntity isOfType: FASTXMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'xmlns'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"http://docbook.org/ns/docbook"'.
						self assert: (self topEntity isOfType: FASTXMLAttValue).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '
 …
' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '
 …
' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</book>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'book'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<?xml version="1.0"?>
<?xml-model href="http://www.docbook.org/xml/5.0/rng/docbook.rng"?>
<?xml-model href="http://www.docbook.org/xml/5.0/xsd/docbook.xsd"?>
<book xmlns="http://docbook.org/ns/docbook">
 …
</book>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testGeneratedXMLStylesheet [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedXMLStylesheet 	"

	self parse: '<?xml-stylesheet href="common.css"?>
<?xml-stylesheet href="default.css" title="Default style"?>
<?xml-stylesheet alternate="yes" href="alt.css" title="Alternative style"?>
<?xml-stylesheet href="single-col.css" media="all and (max-width: 30em)"?>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title>Example with xml-stylesheet processing instructions</title>
 </head>
 <body>
  ...
 </body>
</html>;'.

	self assert: (fast allWithType: FASTXMLAttValue) size equals: 1.
	self assert: (fast allWithType: FASTXMLAttribute) size equals: 1.
	self assert: (fast allWithType: FASTXMLCharData) size equals: 7.
	self assert: (fast allWithType: FASTXMLContent) size equals: 4.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 4.
	self assert: (fast allWithType: FASTXMLElement) size equals: 4.
	self assert: (fast allWithType: FASTXMLName) size equals: 17.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLPseudoAtt) size equals: 8.
	self assert: (fast allWithType: FASTXMLPseudoAttValue) size equals: 8.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 4.
	self assert: (fast allWithType: FASTXMLStyleSheetPI) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<?xml-stylesheet href="common.css"?>
<?xml-stylesheet href="default.css" title="Default style"?>
<?xml-stylesheet alternate="yes" href="alt.css" title="Alternative style"?>
<?xml-stylesheet href="single-col.css" media="all and (max-width: 30em)"?>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title>Example with xml-stylesheet processing instructions</title>
 </head>
 <body>
  ...
 </body>
</html>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 2.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<?xml-stylesheet href="common.css"?>
<?xml-stylesheet href="default.css" title="Default style"?>
<?xml-stylesheet alternate="yes" href="alt.css" title="Alternative style"?>
<?xml-stylesheet href="single-col.css" media="all and (max-width: 30em)"?>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 4.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<?xml-stylesheet href="common.css"?>'.
			self assert: (self topEntity isOfType: FASTXMLStyleSheetPI).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'href="common.css"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'href'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"common.css"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<?xml-stylesheet href="default.css" title="Default style"?>'.
			self assert: (self topEntity isOfType: FASTXMLStyleSheetPI).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'href="default.css"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'href'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"default.css"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'title="Default style"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'title'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"Default style"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '<?xml-stylesheet alternate="yes" href="alt.css" title="Alternative style"?>'.
			self assert: (self topEntity isOfType: FASTXMLStyleSheetPI).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'alternate="yes"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'alternate'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"yes"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'href="alt.css"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'href'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"alt.css"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'title="Alternative style"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'title'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"Alternative style"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '<?xml-stylesheet href="single-col.css" media="all and (max-width: 30em)"?>'.
			self assert: (self topEntity isOfType: FASTXMLStyleSheetPI).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'href="single-col.css"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'href'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"single-col.css"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'media="all and (max-width: 30em)"'.
				self assert: (self topEntity isOfType: FASTXMLPseudoAtt).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'media'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"all and (max-width: 30em)"'.
					self assert: (self topEntity isOfType: FASTXMLPseudoAttValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		"Testing value of monovalue relation root"
		self assert: self topEntity root isNotNil.

			stack push: self topEntity root.
			self assert: self topEntity sourceCode equals: '<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title>Example with xml-stylesheet processing instructions</title>
 </head>
 <body>
  ...
 </body>
</html>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<html xmlns="http://www.w3.org/1999/xhtml">'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'html'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'xmlns="http://www.w3.org/1999/xhtml"'.
					self assert: (self topEntity isOfType: FASTXMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'xmlns'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"http://www.w3.org/1999/xhtml"'.
						self assert: (self topEntity isOfType: FASTXMLAttValue).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '
 <head>
  <title>Example with xml-stylesheet processing instructions</title>
 </head>
 <body>
  ...
 </body>
' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLContent).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 5.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '
 ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '<head>
  <title>Example with xml-stylesheet processing instructions</title>
 </head>' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<head>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'head'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '
  <title>Example with xml-stylesheet processing instructions</title>
 ' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '<title>Example with xml-stylesheet processing instructions</title>'.
							self assert: (self topEntity isOfType: FASTXMLElement).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '<title>'.
								self assert: (self topEntity isOfType: FASTXMLSTag).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'title'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: 'Example with xml-stylesheet processing instructions'.
								self assert: (self topEntity isOfType: FASTXMLContent).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'Example with xml-stylesheet processing instructions'.
									self assert: (self topEntity isOfType: FASTXMLCharData).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '</title>'.
								self assert: (self topEntity isOfType: FASTXMLETag).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'title'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '
 ' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</head>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'head'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '
 ' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '<body>
  ...
 </body>' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<body>'.
						self assert: (self topEntity isOfType: FASTXMLSTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'body'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '
  ...
 ' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTXMLContent).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '
  ...
 ' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLCharData).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '</body>'.
						self assert: (self topEntity isOfType: FASTXMLETag).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'body'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth.
					self assert: (self topEntity isOfType: FASTXMLCharData).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</html>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'html'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		self assert: self topEntity source equals: '<?xml-stylesheet href="common.css"?>
<?xml-stylesheet href="default.css" title="Default style"?>
<?xml-stylesheet alternate="yes" href="alt.css" title="Alternative style"?>
<?xml-stylesheet href="single-col.css" media="all and (max-width: 30em)"?>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title>Example with xml-stylesheet processing instructions</title>
 </head>
 <body>
  ...
 </body>
</html>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testParseAttributeListDeclarations [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testParseAttributeListDeclarations 	"

	self parse: '<!DOCTYPE doc [
  <!ATTLIST termdef
    id ID #REQUIRED
    name CDATA #IMPLIED>
  <!ATTLIST list
    type (bullets|ordered|glossary) "ordered">
  <!ATTLIST form
    method CDATA #FIXED "POST">
]>
<doc></doc>'.

	self assert: (fast allWithType: FASTXMLAttDef) size equals: 4.
	self assert: (fast allWithType: FASTXMLAttValue) size equals: 2.
	self assert: (fast allWithType: FASTXMLAttlistDecl) size equals: 3.
	self assert: (fast allWithType: FASTXMLDefaultDecl) size equals: 4.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLEnumeration) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 10.
	self assert: (fast allWithType: FASTXMLNmtoken) size equals: 3.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLStringType) size equals: 2.
	self assert: (fast allWithType: FASTXMLTokenizedType) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!DOCTYPE doc [
  <!ATTLIST termdef
    id ID #REQUIRED
    name CDATA #IMPLIED>
  <!ATTLIST list
    type (bullets|ordered|glossary) "ordered">
  <!ATTLIST form
    method CDATA #FIXED "POST">
]>
<doc></doc>' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<!DOCTYPE doc [
  <!ATTLIST termdef
    id ID #REQUIRED
    name CDATA #IMPLIED>
  <!ATTLIST list
    type (bullets|ordered|glossary) "ordered">
  <!ATTLIST form
    method CDATA #FIXED "POST">
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE doc [
  <!ATTLIST termdef
    id ID #REQUIRED
    name CDATA #IMPLIED>
  <!ATTLIST list
    type (bullets|ordered|glossary) "ordered">
  <!ATTLIST form
    method CDATA #FIXED "POST">
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'doc'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!ATTLIST termdef
    id ID #REQUIRED
    name CDATA #IMPLIED>' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'termdef'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '
    id ID #REQUIRED' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'id'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'ID'.
						self assert: (self topEntity isOfType: FASTXMLTokenizedType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#REQUIRED'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '
    name CDATA #IMPLIED' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'name'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'CDATA'.
						self assert: (self topEntity isOfType: FASTXMLStringType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#IMPLIED'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<!ATTLIST list
    type (bullets|ordered|glossary) "ordered">' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'list'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '
    type (bullets|ordered|glossary) "ordered"' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'type'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(bullets|ordered|glossary)'.
						self assert: (self topEntity isOfType: FASTXMLEnumeration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'bullets'.
							self assert: (self topEntity isOfType: FASTXMLNmtoken).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'ordered'.
							self assert: (self topEntity isOfType: FASTXMLNmtoken).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'glossary'.
							self assert: (self topEntity isOfType: FASTXMLNmtoken).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '"ordered"'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '"ordered"'.
							self assert: (self topEntity isOfType: FASTXMLAttValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<!ATTLIST form
    method CDATA #FIXED "POST">' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'form'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '
    method CDATA #FIXED "POST"' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'method'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'CDATA'.
						self assert: (self topEntity isOfType: FASTXMLStringType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#FIXED "POST"'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '"POST"'.
							self assert: (self topEntity isOfType: FASTXMLAttValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
	"Testing value of monovalue relation root"
	self assert: self topEntity root isNotNil.

		stack push: self topEntity root.
		self assert: self topEntity sourceCode equals: '<doc></doc>'.
		self assert: (self topEntity isOfType: FASTXMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<doc>'.
			self assert: (self topEntity isOfType: FASTXMLSTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'doc'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '</doc>'.
			self assert: (self topEntity isOfType: FASTXMLETag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'doc'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '<!DOCTYPE doc [
  <!ATTLIST termdef
    id ID #REQUIRED
    name CDATA #IMPLIED>
  <!ATTLIST list
    type (bullets|ordered|glossary) "ordered">
  <!ATTLIST form
    method CDATA #FIXED "POST">
]>
<doc></doc>' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testParseBookStoredtd [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testParseBookStoredtd 	"

	self parse: '<!DOCTYPE bookstore [
  <!ELEMENT bookstore (book*)>
  <!ELEMENT book (title,author,genre?)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (first-name, last-name)>
  <!ELEMENT genre (#PCDATA)>
  <!ELEMENT first-name (#PCDATA)>
  <!ELEMENT last-name (#PCDATA)>
  <!ATTLIST book price CDATA #REQUIRED>
  <!ATTLIST book publicationdate CDATA #IMPLIED>
  <!ATTLIST book IBSN CDATA #IMPLIED>
]>
<bookstore></bookstore>'.

	self assert: (fast allWithType: FASTXMLAttDef) size equals: 3.
	self assert: (fast allWithType: FASTXMLAttlistDecl) size equals: 3.
	self assert: (fast allWithType: FASTXMLChildren) size equals: 3.
	self assert: (fast allWithType: FASTXMLContentspec) size equals: 7.
	self assert: (fast allWithType: FASTXMLDefaultDecl) size equals: 3.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLElementdecl) size equals: 7.
	self assert: (fast allWithType: FASTXMLMixed) size equals: 4.
	self assert: (fast allWithType: FASTXMLName) size equals: 22.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLStringType) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!DOCTYPE bookstore [
  <!ELEMENT bookstore (book*)>
  <!ELEMENT book (title,author,genre?)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (first-name, last-name)>
  <!ELEMENT genre (#PCDATA)>
  <!ELEMENT first-name (#PCDATA)>
  <!ELEMENT last-name (#PCDATA)>
  <!ATTLIST book price CDATA #REQUIRED>
  <!ATTLIST book publicationdate CDATA #IMPLIED>
  <!ATTLIST book IBSN CDATA #IMPLIED>
]>
<bookstore></bookstore>' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<!DOCTYPE bookstore [
  <!ELEMENT bookstore (book*)>
  <!ELEMENT book (title,author,genre?)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (first-name, last-name)>
  <!ELEMENT genre (#PCDATA)>
  <!ELEMENT first-name (#PCDATA)>
  <!ELEMENT last-name (#PCDATA)>
  <!ATTLIST book price CDATA #REQUIRED>
  <!ATTLIST book publicationdate CDATA #IMPLIED>
  <!ATTLIST book IBSN CDATA #IMPLIED>
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE bookstore [
  <!ELEMENT bookstore (book*)>
  <!ELEMENT book (title,author,genre?)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (first-name, last-name)>
  <!ELEMENT genre (#PCDATA)>
  <!ELEMENT first-name (#PCDATA)>
  <!ELEMENT last-name (#PCDATA)>
  <!ATTLIST book price CDATA #REQUIRED>
  <!ATTLIST book publicationdate CDATA #IMPLIED>
  <!ATTLIST book IBSN CDATA #IMPLIED>
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 11.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'bookstore'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!ELEMENT bookstore (book*)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'bookstore'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(book*)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(book*)'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'book'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<!ELEMENT book (title,author,genre?)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'book'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(title,author,genre?)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(title,author,genre?)'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'title'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'author'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'genre'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<!ELEMENT title (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'title'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '<!ELEMENT author (first-name, last-name)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'author'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(first-name, last-name)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(first-name, last-name)'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'first-name'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'last-name'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 6).
				self assert: self topEntity sourceCode equals: '<!ELEMENT genre (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'genre'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 7).
				self assert: self topEntity sourceCode equals: '<!ELEMENT first-name (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'first-name'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 8).
				self assert: self topEntity sourceCode equals: '<!ELEMENT last-name (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'last-name'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 9).
				self assert: self topEntity sourceCode equals: '<!ATTLIST book price CDATA #REQUIRED>'.
				self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'book'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: ' price CDATA #REQUIRED'.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'price'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'CDATA'.
						self assert: (self topEntity isOfType: FASTXMLStringType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#REQUIRED'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 10).
				self assert: self topEntity sourceCode equals: '<!ATTLIST book publicationdate CDATA #IMPLIED>'.
				self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'book'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: ' publicationdate CDATA #IMPLIED'.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'publicationdate'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'CDATA'.
						self assert: (self topEntity isOfType: FASTXMLStringType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#IMPLIED'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 11).
				self assert: self topEntity sourceCode equals: '<!ATTLIST book IBSN CDATA #IMPLIED>'.
				self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'book'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: ' IBSN CDATA #IMPLIED'.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'IBSN'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'CDATA'.
						self assert: (self topEntity isOfType: FASTXMLStringType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#IMPLIED'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
	"Testing value of monovalue relation root"
	self assert: self topEntity root isNotNil.

		stack push: self topEntity root.
		self assert: self topEntity sourceCode equals: '<bookstore></bookstore>'.
		self assert: (self topEntity isOfType: FASTXMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<bookstore>'.
			self assert: (self topEntity isOfType: FASTXMLSTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'bookstore'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '</bookstore>'.
			self assert: (self topEntity isOfType: FASTXMLETag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'bookstore'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '<!DOCTYPE bookstore [
  <!ELEMENT bookstore (book*)>
  <!ELEMENT book (title,author,genre?)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (first-name, last-name)>
  <!ELEMENT genre (#PCDATA)>
  <!ELEMENT first-name (#PCDATA)>
  <!ELEMENT last-name (#PCDATA)>
  <!ATTLIST book price CDATA #REQUIRED>
  <!ATTLIST book publicationdate CDATA #IMPLIED>
  <!ATTLIST book IBSN CDATA #IMPLIED>
]>
<bookstore></bookstore>' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testParseConditionalSections [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testParseConditionalSections 	"

	self parse: '<!DOCTYPE book [
  <!ENTITY % draft ''INCLUDE'' >
  <!ENTITY % final ''IGNORE'' >
  <!ELEMENT book (comments*, title, body, supplements?)>
]>
<book></book>'.

	self assert: (fast allWithType: FASTXMLChildren) size equals: 1.
	self assert: (fast allWithType: FASTXMLContentspec) size equals: 1.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLElementdecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLEntityValue) size equals: 2.
	self assert: (fast allWithType: FASTXMLName) size equals: 10.
	self assert: (fast allWithType: FASTXMLPEDecl) size equals: 2.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!DOCTYPE book [
  <!ENTITY % draft ''INCLUDE'' >
  <!ENTITY % final ''IGNORE'' >
  <!ELEMENT book (comments*, title, body, supplements?)>
]>
<book></book>' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<!DOCTYPE book [
  <!ENTITY % draft ''INCLUDE'' >
  <!ENTITY % final ''IGNORE'' >
  <!ELEMENT book (comments*, title, body, supplements?)>
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE book [
  <!ENTITY % draft ''INCLUDE'' >
  <!ENTITY % final ''IGNORE'' >
  <!ELEMENT book (comments*, title, body, supplements?)>
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'book'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!ENTITY % draft ''INCLUDE'' >'.
				self assert: (self topEntity isOfType: FASTXMLPEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'draft'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '''INCLUDE'''.
					self assert: (self topEntity isOfType: FASTXMLEntityValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<!ENTITY % final ''IGNORE'' >'.
				self assert: (self topEntity isOfType: FASTXMLPEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'final'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '''IGNORE'''.
					self assert: (self topEntity isOfType: FASTXMLEntityValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<!ELEMENT book (comments*, title, body, supplements?)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'book'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(comments*, title, body, supplements?)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(comments*, title, body, supplements?)'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'comments'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'title'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'body'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: 'supplements'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
	"Testing value of monovalue relation root"
	self assert: self topEntity root isNotNil.

		stack push: self topEntity root.
		self assert: self topEntity sourceCode equals: '<book></book>'.
		self assert: (self topEntity isOfType: FASTXMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<book>'.
			self assert: (self topEntity isOfType: FASTXMLSTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'book'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '</book>'.
			self assert: (self topEntity isOfType: FASTXMLETag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'book'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '<!DOCTYPE book [
  <!ENTITY % draft ''INCLUDE'' >
  <!ENTITY % final ''IGNORE'' >
  <!ELEMENT book (comments*, title, body, supplements?)>
]>
<book></book>' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testParseElementDeclarations [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testParseElementDeclarations 	"

	self parse: '<!DOCTYPE spec [
  <!ELEMENT br EMPTY>
  <!ELEMENT p (#PCDATA|emph)* >
  <!ELEMENT %name.para; %content.para; >
  <!ELEMENT container ANY>
  <!ELEMENT spec (front, body, back?)>
  <!ELEMENT div1 (head, (p | list | note)*, div2*)>
  <!ELEMENT dictionary-body (%div.mix; | %dict.mix;)*>
  <!ELEMENT p (#PCDATA|a|ul|b|i|em)*>
  <!ELEMENT p (#PCDATA | %font; | %phrase; | %special; | %form;)* >
  <!ELEMENT b (#PCDATA)>
]>
<spec>
  <front/>
  <body></body>
</spec>'.

	self assert: (fast allWithType: FASTXMLCharData) size equals: 3.
	self assert: (fast allWithType: FASTXMLChildren) size equals: 3.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLContentspec) size equals: 10.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 2.
	self assert: (fast allWithType: FASTXMLElement) size equals: 3.
	self assert: (fast allWithType: FASTXMLElementdecl) size equals: 10.
	self assert: (fast allWithType: FASTXMLEmptyElemTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLMixed) size equals: 4.
	self assert: (fast allWithType: FASTXMLName) size equals: 37.
	self assert: (fast allWithType: FASTXMLPEReference) size equals: 8.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!DOCTYPE spec [
  <!ELEMENT br EMPTY>
  <!ELEMENT p (#PCDATA|emph)* >
  <!ELEMENT %name.para; %content.para; >
  <!ELEMENT container ANY>
  <!ELEMENT spec (front, body, back?)>
  <!ELEMENT div1 (head, (p | list | note)*, div2*)>
  <!ELEMENT dictionary-body (%div.mix; | %dict.mix;)*>
  <!ELEMENT p (#PCDATA|a|ul|b|i|em)*>
  <!ELEMENT p (#PCDATA | %font; | %phrase; | %special; | %form;)* >
  <!ELEMENT b (#PCDATA)>
]>
<spec>
  <front/>
  <body></body>
</spec>' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<!DOCTYPE spec [
  <!ELEMENT br EMPTY>
  <!ELEMENT p (#PCDATA|emph)* >
  <!ELEMENT %name.para; %content.para; >
  <!ELEMENT container ANY>
  <!ELEMENT spec (front, body, back?)>
  <!ELEMENT div1 (head, (p | list | note)*, div2*)>
  <!ELEMENT dictionary-body (%div.mix; | %dict.mix;)*>
  <!ELEMENT p (#PCDATA|a|ul|b|i|em)*>
  <!ELEMENT p (#PCDATA | %font; | %phrase; | %special; | %form;)* >
  <!ELEMENT b (#PCDATA)>
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE spec [
  <!ELEMENT br EMPTY>
  <!ELEMENT p (#PCDATA|emph)* >
  <!ELEMENT %name.para; %content.para; >
  <!ELEMENT container ANY>
  <!ELEMENT spec (front, body, back?)>
  <!ELEMENT div1 (head, (p | list | note)*, div2*)>
  <!ELEMENT dictionary-body (%div.mix; | %dict.mix;)*>
  <!ELEMENT p (#PCDATA|a|ul|b|i|em)*>
  <!ELEMENT p (#PCDATA | %font; | %phrase; | %special; | %form;)* >
  <!ELEMENT b (#PCDATA)>
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 11.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'spec'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!ELEMENT br EMPTY>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'br'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'EMPTY'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<!ELEMENT p (#PCDATA|emph)* >'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'p'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA|emph)*'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA|emph)*'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'emph'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<!ELEMENT %name.para; %content.para; >'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '%name.para;'.
					self assert: (self topEntity isOfType: FASTXMLPEReference).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'name.para'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '%content.para;'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%content.para;'.
						self assert: (self topEntity isOfType: FASTXMLPEReference).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'content.para'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '<!ELEMENT container ANY>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'container'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'ANY'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 6).
				self assert: self topEntity sourceCode equals: '<!ELEMENT spec (front, body, back?)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'spec'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(front, body, back?)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(front, body, back?)'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'front'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'body'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'back'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 7).
				self assert: self topEntity sourceCode equals: '<!ELEMENT div1 (head, (p | list | note)*, div2*)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'div1'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(head, (p | list | note)*, div2*)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(head, (p | list | note)*, div2*)'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 5.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'head'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'p'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'list'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: 'note'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: 'div2'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 8).
				self assert: self topEntity sourceCode equals: '<!ELEMENT dictionary-body (%div.mix; | %dict.mix;)*>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'dictionary-body'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(%div.mix; | %dict.mix;)*'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(%div.mix; | %dict.mix;)*'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '%div.mix;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'div.mix'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '%dict.mix;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'dict.mix'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 9).
				self assert: self topEntity sourceCode equals: '<!ELEMENT p (#PCDATA|a|ul|b|i|em)*>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'p'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA|a|ul|b|i|em)*'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA|a|ul|b|i|em)*'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 5.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'a'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'ul'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: 'i'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: 'em'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 10).
				self assert: self topEntity sourceCode equals: '<!ELEMENT p (#PCDATA | %font; | %phrase; | %special; | %form;)* >'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'p'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA | %font; | %phrase; | %special; | %form;)*'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA | %font; | %phrase; | %special; | %form;)*'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '%font;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'font'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '%phrase;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'phrase'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '%special;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'special'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '%form;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'form'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 11).
				self assert: self topEntity sourceCode equals: '<!ELEMENT b (#PCDATA)>'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(#PCDATA)'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(#PCDATA)'.
						self assert: (self topEntity isOfType: FASTXMLMixed).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
	"Testing value of monovalue relation root"
	self assert: self topEntity root isNotNil.

		stack push: self topEntity root.
		self assert: self topEntity sourceCode equals: '<spec>
  <front/>
  <body></body>
</spec>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<spec>'.
			self assert: (self topEntity isOfType: FASTXMLSTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'spec'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '
  <front/>
  <body></body>
' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLContent).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLCharData).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<front/>'.
				self assert: (self topEntity isOfType: FASTXMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<front/>'.
					self assert: (self topEntity isOfType: FASTXMLEmptyElemTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'front'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '
  ' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLCharData).
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<body></body>'.
				self assert: (self topEntity isOfType: FASTXMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<body>'.
					self assert: (self topEntity isOfType: FASTXMLSTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'body'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '</body>'.
					self assert: (self topEntity isOfType: FASTXMLETag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'body'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode trimBoth equals: '' trimBoth.
				self assert: (self topEntity isOfType: FASTXMLCharData).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</spec>'.
			self assert: (self topEntity isOfType: FASTXMLETag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'spec'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '<!DOCTYPE spec [
  <!ELEMENT br EMPTY>
  <!ELEMENT p (#PCDATA|emph)* >
  <!ELEMENT %name.para; %content.para; >
  <!ELEMENT container ANY>
  <!ELEMENT spec (front, body, back?)>
  <!ELEMENT div1 (head, (p | list | note)*, div2*)>
  <!ELEMENT dictionary-body (%div.mix; | %dict.mix;)*>
  <!ELEMENT p (#PCDATA|a|ul|b|i|em)*>
  <!ELEMENT p (#PCDATA | %font; | %phrase; | %special; | %form;)* >
  <!ELEMENT b (#PCDATA)>
]>
<spec>
  <front/>
  <body></body>
</spec>' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testParseEntityDeclarations [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testParseEntityDeclarations 	"

	self parse: '<!DOCTYPE doc [
  <!ENTITY Pub-Status "This is a pre-release of the  specification.">
  <!ENTITY open-hatch SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY open-hatch PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY hatch-pic SYSTEM "../grafix/OpenHatch.gif" NDATA gif>
]>
<doc></doc>'.

	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 1.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLEntityValue) size equals: 1.
	self assert: (fast allWithType: FASTXMLExternalID) size equals: 3.
	self assert: (fast allWithType: FASTXMLGEDecl) size equals: 4.
	self assert: (fast allWithType: FASTXMLNDataDecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 8.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLPubidLiteral) size equals: 1.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLSystemLiteral) size equals: 3.
	self assert: (fast allWithType: FASTXMLURI) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!DOCTYPE doc [
  <!ENTITY Pub-Status "This is a pre-release of the  specification.">
  <!ENTITY open-hatch SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY open-hatch PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY hatch-pic SYSTEM "../grafix/OpenHatch.gif" NDATA gif>
]>
<doc></doc>' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<!DOCTYPE doc [
  <!ENTITY Pub-Status "This is a pre-release of the  specification.">
  <!ENTITY open-hatch SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY open-hatch PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY hatch-pic SYSTEM "../grafix/OpenHatch.gif" NDATA gif>
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE doc [
  <!ENTITY Pub-Status "This is a pre-release of the  specification.">
  <!ENTITY open-hatch SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY open-hatch PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY hatch-pic SYSTEM "../grafix/OpenHatch.gif" NDATA gif>
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'doc'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!ENTITY Pub-Status "This is a pre-release of the  specification.">'.
				self assert: (self topEntity isOfType: FASTXMLGEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'Pub-Status'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"This is a pre-release of the  specification."'.
					self assert: (self topEntity isOfType: FASTXMLEntityValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<!ENTITY open-hatch SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml">'.
				self assert: (self topEntity isOfType: FASTXMLGEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'open-hatch'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml"'.
					self assert: (self topEntity isOfType: FASTXMLExternalID).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"http://www.textuality.com/boilerplate/OpenHatch.xml"'.
						self assert: (self topEntity isOfType: FASTXMLSystemLiteral).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'http://www.textuality.com/boilerplate/OpenHatch.xml'.
							self assert: (self topEntity isOfType: FASTXMLURI).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<!ENTITY open-hatch PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml">'.
				self assert: (self topEntity isOfType: FASTXMLGEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'open-hatch'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml"'.
					self assert: (self topEntity isOfType: FASTXMLExternalID).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"-//Textuality//TEXT Standard open-hatch boilerplate//EN"'.
						self assert: (self topEntity isOfType: FASTXMLPubidLiteral).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"http://www.textuality.com/boilerplate/OpenHatch.xml"'.
						self assert: (self topEntity isOfType: FASTXMLSystemLiteral).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'http://www.textuality.com/boilerplate/OpenHatch.xml'.
							self assert: (self topEntity isOfType: FASTXMLURI).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '<!ENTITY hatch-pic SYSTEM "../grafix/OpenHatch.gif" NDATA gif>'.
				self assert: (self topEntity isOfType: FASTXMLGEDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'hatch-pic'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'SYSTEM "../grafix/OpenHatch.gif"'.
					self assert: (self topEntity isOfType: FASTXMLExternalID).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '"../grafix/OpenHatch.gif"'.
						self assert: (self topEntity isOfType: FASTXMLSystemLiteral).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '../grafix/OpenHatch.gif'.
							self assert: (self topEntity isOfType: FASTXMLURI).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: ' NDATA gif'.
					self assert: (self topEntity isOfType: FASTXMLNDataDecl).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'gif'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
	"Testing value of monovalue relation root"
	self assert: self topEntity root isNotNil.

		stack push: self topEntity root.
		self assert: self topEntity sourceCode equals: '<doc></doc>'.
		self assert: (self topEntity isOfType: FASTXMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<doc>'.
			self assert: (self topEntity isOfType: FASTXMLSTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'doc'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '</doc>'.
			self assert: (self topEntity isOfType: FASTXMLETag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'doc'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '<!DOCTYPE doc [
  <!ENTITY Pub-Status "This is a pre-release of the  specification.">
  <!ENTITY open-hatch SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY open-hatch PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml">
  <!ENTITY hatch-pic SYSTEM "../grafix/OpenHatch.gif" NDATA gif>
]>
<doc></doc>' withPlatformLineEndings
]

{ #category : 'tests' }
FASTXMLImporterTest >> testParseLanguageXml [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testParseLanguageXml 	"

	self parse: '<termdef id="dt-dog" term="dog">
<IMG align="left"
 src="http://www.w3.org/Icons/WWW/w3c_home" />
<br></br>
<br/>
</termdef>'.

	self assert: (fast allWithType: FASTXMLAttValue) size equals: 4.
	self assert: (fast allWithType: FASTXMLAttribute) size equals: 4.
	self assert: (fast allWithType: FASTXMLCharData) size equals: 4.
	self assert: (fast allWithType: FASTXMLContent) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLETag) size equals: 2.
	self assert: (fast allWithType: FASTXMLElement) size equals: 4.
	self assert: (fast allWithType: FASTXMLEmptyElemTag) size equals: 2.
	self assert: (fast allWithType: FASTXMLName) size equals: 10.
	self assert: (fast allWithType: FASTXMLSTag) size equals: 2.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '<termdef id="dt-dog" term="dog">
<IMG align="left"
 src="http://www.w3.org/Icons/WWW/w3c_home" />
<br></br>
<br/>
</termdef>' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLElement).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<termdef id="dt-dog" term="dog">'.
		self assert: (self topEntity isOfType: FASTXMLSTag).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'termdef'.
			self assert: (self topEntity isOfType: FASTXMLName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'id="dt-dog"'.
			self assert: (self topEntity isOfType: FASTXMLAttribute).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'id'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '"dt-dog"'.
				self assert: (self topEntity isOfType: FASTXMLAttValue).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: 'term="dog"'.
			self assert: (self topEntity isOfType: FASTXMLAttribute).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'term'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '"dog"'.
				self assert: (self topEntity isOfType: FASTXMLAttValue).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '
<IMG align="left"
 src="http://www.w3.org/Icons/WWW/w3c_home" />
<br></br>
<br/>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLContent).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 7.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth .
			self assert: (self topEntity isOfType: FASTXMLCharData).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<IMG align="left"
 src="http://www.w3.org/Icons/WWW/w3c_home" />' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<IMG align="left"
 src="http://www.w3.org/Icons/WWW/w3c_home" />' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLEmptyElemTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'IMG'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'align="left"'.
					self assert: (self topEntity isOfType: FASTXMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'align'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"left"'.
						self assert: (self topEntity isOfType: FASTXMLAttValue).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'src="http://www.w3.org/Icons/WWW/w3c_home"'.
					self assert: (self topEntity isOfType: FASTXMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'src'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"http://www.w3.org/Icons/WWW/w3c_home"'.
						self assert: (self topEntity isOfType: FASTXMLAttValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth .
			self assert: (self topEntity isOfType: FASTXMLCharData).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '<br></br>'.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<br>'.
				self assert: (self topEntity isOfType: FASTXMLSTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'br'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '</br>'.
				self assert: (self topEntity isOfType: FASTXMLETag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'br'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth .
			self assert: (self topEntity isOfType: FASTXMLCharData).
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode equals: '<br/>'.
			self assert: (self topEntity isOfType: FASTXMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<br/>'.
				self assert: (self topEntity isOfType: FASTXMLEmptyElemTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'br'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 7).
			self assert: self topEntity sourceCode trimBoth equals: '
' trimBoth .
			self assert: (self topEntity isOfType: FASTXMLCharData).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '</termdef>'.
		self assert: (self topEntity isOfType: FASTXMLETag).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: 'termdef'.
			self assert: (self topEntity isOfType: FASTXMLName)
]

{ #category : 'tests' }
FASTXMLImporterTest >> testParseParameterEntityReferences [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testParseParameterEntityReferences 	"

	self parse: '<!DOCTYPE svg [
  <!-- svg.dtd -->
  <!ELEMENT svg (desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)* >
  <!ATTLIST svg
    xmlns CDATA #FIXED "http://www.w3.org/2000/svg"
    xmlns:xlink CDATA #FIXED "http://www.w3.org/1999/xlink"
    %stdAttrs;
    %testAttrs;
    %langSpaceAttrs;
    class %ClassList; #IMPLIED
    style %StyleSheet; #IMPLIED
    %PresentationAttributes-All;
    preserveAspectRatio %PreserveAspectRatioSpec; ''''xMidYMid meet''''
    zoomAndPan (disable | magnify) ''''magnify''''
    %graphicsElementEvents;
    %documentEvents;
    version %Number; #FIXED "1.0"
    x %Coordinate; #IMPLIED
    y %Coordinate; #IMPLIED
    width %Length; #IMPLIED
    height %Length; #IMPLIED
    contentScriptType %ContentType; "text/ecmascript"
    contentStyleType %ContentType; "text/css" >
  <!ELEMENT desc (#PCDATA %descExt;)* >
  <!ELEMENT view (%descTitleMetadata; %viewExt;) >
  <!-- catalog.dtd -->
  <!ELEMENT %catalog; (%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+>
  <!ATTLIST %catalog;
    %nsdecl;
    %uriReference; #FIXED ''''urn:oasis:names:tc:entity:xmlns:xml:catalog''''
    prefer %systemOrPublic; #IMPLIED
    xml:base %uriReference; #IMPLIED
    %local.catalog.attribs;>
]>
<svg/>'.

	self assert: (fast allWithType: FASTXMLAttDef) size equals: 17.
	self assert: (fast allWithType: FASTXMLAttValue) size equals: 8.
	self assert: (fast allWithType: FASTXMLAttlistDecl) size equals: 2.
	self assert: (fast allWithType: FASTXMLChildren) size equals: 3.
	self assert: (fast allWithType: FASTXMLComment) size equals: 2.
	self assert: (fast allWithType: FASTXMLContentspec) size equals: 4.
	self assert: (fast allWithType: FASTXMLDefaultDecl) size equals: 17.
	self assert: (fast allWithType: FASTXMLDoctypedecl) size equals: 1.
	self assert: (fast allWithType: FASTXMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTXMLERROR) size equals: 3.
	self assert: (fast allWithType: FASTXMLElement) size equals: 1.
	self assert: (fast allWithType: FASTXMLElementdecl) size equals: 4.
	self assert: (fast allWithType: FASTXMLEmptyElemTag) size equals: 1.
	self assert: (fast allWithType: FASTXMLEnumeration) size equals: 1.
	self assert: (fast allWithType: FASTXMLMixed) size equals: 1.
	self assert: (fast allWithType: FASTXMLName) size equals: 103.
	self assert: (fast allWithType: FASTXMLNmtoken) size equals: 2.
	self assert: (fast allWithType: FASTXMLPEReference) size equals: 39.
	self assert: (fast allWithType: FASTXMLProlog) size equals: 1.
	self assert: (fast allWithType: FASTXMLStringType) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!DOCTYPE svg [
  <!-- svg.dtd -->
  <!ELEMENT svg (desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)* >
  <!ATTLIST svg
    xmlns CDATA #FIXED "http://www.w3.org/2000/svg"
    xmlns:xlink CDATA #FIXED "http://www.w3.org/1999/xlink"
    %stdAttrs;
    %testAttrs;
    %langSpaceAttrs;
    class %ClassList; #IMPLIED
    style %StyleSheet; #IMPLIED
    %PresentationAttributes-All;
    preserveAspectRatio %PreserveAspectRatioSpec; ''''xMidYMid meet''''
    zoomAndPan (disable | magnify) ''''magnify''''
    %graphicsElementEvents;
    %documentEvents;
    version %Number; #FIXED "1.0"
    x %Coordinate; #IMPLIED
    y %Coordinate; #IMPLIED
    width %Length; #IMPLIED
    height %Length; #IMPLIED
    contentScriptType %ContentType; "text/ecmascript"
    contentStyleType %ContentType; "text/css" >
  <!ELEMENT desc (#PCDATA %descExt;)* >
  <!ELEMENT view (%descTitleMetadata; %viewExt;) >
  <!-- catalog.dtd -->
  <!ELEMENT %catalog; (%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+>
  <!ATTLIST %catalog;
    %nsdecl;
    %uriReference; #FIXED ''''urn:oasis:names:tc:entity:xmlns:xml:catalog''''
    prefer %systemOrPublic; #IMPLIED
    xml:base %uriReference; #IMPLIED
    %local.catalog.attribs;>
]>
<svg/>' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTXMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation genericChildren"
	self assert: self topEntity genericChildren size equals: 1.
	
		stack push: (stack top genericChildren at: 1).
		self assert: self topEntity sourceCode equals: '<!DOCTYPE svg [
  <!-- svg.dtd -->
  <!ELEMENT svg (desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)* >
  <!ATTLIST svg
    xmlns CDATA #FIXED "http://www.w3.org/2000/svg"
    xmlns:xlink CDATA #FIXED "http://www.w3.org/1999/xlink"
    %stdAttrs;
    %testAttrs;
    %langSpaceAttrs;
    class %ClassList; #IMPLIED
    style %StyleSheet; #IMPLIED
    %PresentationAttributes-All;
    preserveAspectRatio %PreserveAspectRatioSpec; ''''xMidYMid meet''''
    zoomAndPan (disable | magnify) ''''magnify''''
    %graphicsElementEvents;
    %documentEvents;
    version %Number; #FIXED "1.0"
    x %Coordinate; #IMPLIED
    y %Coordinate; #IMPLIED
    width %Length; #IMPLIED
    height %Length; #IMPLIED
    contentScriptType %ContentType; "text/ecmascript"
    contentStyleType %ContentType; "text/css" >
  <!ELEMENT desc (#PCDATA %descExt;)* >
  <!ELEMENT view (%descTitleMetadata; %viewExt;) >
  <!-- catalog.dtd -->
  <!ELEMENT %catalog; (%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+>
  <!ATTLIST %catalog;
    %nsdecl;
    %uriReference; #FIXED ''''urn:oasis:names:tc:entity:xmlns:xml:catalog''''
    prefer %systemOrPublic; #IMPLIED
    xml:base %uriReference; #IMPLIED
    %local.catalog.attribs;>
]>
' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTXMLProlog).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<!DOCTYPE svg [
  <!-- svg.dtd -->
  <!ELEMENT svg (desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)* >
  <!ATTLIST svg
    xmlns CDATA #FIXED "http://www.w3.org/2000/svg"
    xmlns:xlink CDATA #FIXED "http://www.w3.org/1999/xlink"
    %stdAttrs;
    %testAttrs;
    %langSpaceAttrs;
    class %ClassList; #IMPLIED
    style %StyleSheet; #IMPLIED
    %PresentationAttributes-All;
    preserveAspectRatio %PreserveAspectRatioSpec; ''''xMidYMid meet''''
    zoomAndPan (disable | magnify) ''''magnify''''
    %graphicsElementEvents;
    %documentEvents;
    version %Number; #FIXED "1.0"
    x %Coordinate; #IMPLIED
    y %Coordinate; #IMPLIED
    width %Length; #IMPLIED
    height %Length; #IMPLIED
    contentScriptType %ContentType; "text/ecmascript"
    contentStyleType %ContentType; "text/css" >
  <!ELEMENT desc (#PCDATA %descExt;)* >
  <!ELEMENT view (%descTitleMetadata; %viewExt;) >
  <!-- catalog.dtd -->
  <!ELEMENT %catalog; (%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+>
  <!ATTLIST %catalog;
    %nsdecl;
    %uriReference; #FIXED ''''urn:oasis:names:tc:entity:xmlns:xml:catalog''''
    prefer %systemOrPublic; #IMPLIED
    xml:base %uriReference; #IMPLIED
    %local.catalog.attribs;>
]>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTXMLDoctypedecl).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 9.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'svg'.
				self assert: (self topEntity isOfType: FASTXMLName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<!-- svg.dtd -->'.
				self assert: (self topEntity isOfType: FASTXMLComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<!ELEMENT svg (desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)* >'.
				self assert: (self topEntity isOfType: FASTXMLElementdecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'svg'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)*'.
					self assert: (self topEntity isOfType: FASTXMLContentspec).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '(desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)*'.
						self assert: (self topEntity isOfType: FASTXMLChildren).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 41.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'desc'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'title'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'metadata'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: 'defs'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: 'path'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 6).
							self assert: self topEntity sourceCode equals: 'text'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 7).
							self assert: self topEntity sourceCode equals: 'rect'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 8).
							self assert: self topEntity sourceCode equals: 'circle'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 9).
							self assert: self topEntity sourceCode equals: 'ellipse'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 10).
							self assert: self topEntity sourceCode equals: 'line'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 11).
							self assert: self topEntity sourceCode equals: 'polyline'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 12).
							self assert: self topEntity sourceCode equals: 'polygon'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 13).
							self assert: self topEntity sourceCode equals: 'use'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 14).
							self assert: self topEntity sourceCode equals: 'image'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 15).
							self assert: self topEntity sourceCode equals: 'svg'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 16).
							self assert: self topEntity sourceCode equals: 'g'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 17).
							self assert: self topEntity sourceCode equals: 'view'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 18).
							self assert: self topEntity sourceCode equals: 'switch'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 19).
							self assert: self topEntity sourceCode equals: 'a'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 20).
							self assert: self topEntity sourceCode equals: 'altGlyphDef'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 21).
							self assert: self topEntity sourceCode equals: 'script'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 22).
							self assert: self topEntity sourceCode equals: 'style'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 23).
							self assert: self topEntity sourceCode equals: 'symbol'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 24).
							self assert: self topEntity sourceCode equals: 'marker'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 25).
							self assert: self topEntity sourceCode equals: 'clipPath'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 26).
							self assert: self topEntity sourceCode equals: 'mask'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 27).
							self assert: self topEntity sourceCode equals: 'linearGradient'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 28).
							self assert: self topEntity sourceCode equals: 'radialGradient'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 29).
							self assert: self topEntity sourceCode equals: 'pattern'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 30).
							self assert: self topEntity sourceCode equals: 'filter'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 31).
							self assert: self topEntity sourceCode equals: 'cursor'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 32).
							self assert: self topEntity sourceCode equals: 'font'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 33).
							self assert: self topEntity sourceCode equals: 'animate'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 34).
							self assert: self topEntity sourceCode equals: 'set'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 35).
							self assert: self topEntity sourceCode equals: 'animateMotion'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 36).
							self assert: self topEntity sourceCode equals: 'animateColor'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 37).
							self assert: self topEntity sourceCode equals: 'animateTransform'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 38).
							self assert: self topEntity sourceCode equals: 'color-profile'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 39).
							self assert: self topEntity sourceCode equals: 'font-face'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 40).
							self assert: self topEntity sourceCode equals: '%ceExt;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'ceExt'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 41).
							self assert: self topEntity sourceCode equals: '%svgExt;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'svgExt'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<!ATTLIST svg
    xmlns CDATA #FIXED "http://www.w3.org/2000/svg"
    xmlns:xlink CDATA #FIXED "http://www.w3.org/1999/xlink"
    %stdAttrs;
    %testAttrs;
    %langSpaceAttrs;
    class %ClassList; #IMPLIED
    style %StyleSheet; #IMPLIED
    %PresentationAttributes-All;
    preserveAspectRatio %PreserveAspectRatioSpec; ''''xMidYMid meet''''
    zoomAndPan (disable | magnify) ''''magnify''''
    %graphicsElementEvents;
    %documentEvents;
    version %Number; #FIXED "1.0"
    x %Coordinate; #IMPLIED
    y %Coordinate; #IMPLIED
    width %Length; #IMPLIED
    height %Length; #IMPLIED
    contentScriptType %ContentType; "text/ecmascript"
    contentStyleType %ContentType; "text/css" >' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 20.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'svg'.
					self assert: (self topEntity isOfType: FASTXMLName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '
    xmlns CDATA #FIXED "http://www.w3.org/2000/svg"' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'xmlns'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'CDATA'.
						self assert: (self topEntity isOfType: FASTXMLStringType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#FIXED "http://www.w3.org/2000/svg"'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '"http://www.w3.org/2000/svg"'.
							self assert: (self topEntity isOfType: FASTXMLAttValue).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '
    xmlns:xlink CDATA #FIXED "http://www.w3.org/1999/xlink"' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'xmlns:xlink'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'CDATA'.
						self assert: (self topEntity isOfType: FASTXMLStringType).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#FIXED "http://www.w3.org/1999/xlink"'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '"http://www.w3.org/1999/xlink"'.
							self assert: (self topEntity isOfType: FASTXMLAttValue).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: '
    %stdAttrs;
    %testAttrs;
    %langSpaceAttrs;' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '%stdAttrs;'.
						self assert: (self topEntity isOfType: FASTXMLPEReference).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'stdAttrs'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '%testAttrs;'.
						self assert: (self topEntity isOfType: FASTXMLPEReference).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'testAttrs'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '%langSpaceAttrs;'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '%langSpaceAttrs;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'langSpaceAttrs'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: '
    class %ClassList; #IMPLIED' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'class'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '%ClassList;'.
						self assert: (self topEntity isOfType: FASTXMLPEReference).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'ClassList'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#IMPLIED'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 6).
					self assert: self topEntity sourceCode equals: '
    style %StyleSheet; #IMPLIED' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'style'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '%StyleSheet;'.
						self assert: (self topEntity isOfType: FASTXMLPEReference).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'StyleSheet'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '#IMPLIED'.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 7).
					self assert: self topEntity sourceCode equals: '%PresentationAttributes-All;'.
					self assert: (self topEntity isOfType: FASTXMLPEReference).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'PresentationAttributes-All'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 8).
					self assert: self topEntity sourceCode equals: '
    preserveAspectRatio %PreserveAspectRatioSpec; ''''' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTXMLAttDef).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'preserveAspectRatio'.
						self assert: (self topEntity isOfType: FASTXMLName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '%PreserveAspectRatioSpec;'.
						self assert: (self topEntity isOfType: FASTXMLPEReference).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'PreserveAspectRatioSpec'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: ''''''.
						self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: ''''''.
							self assert: (self topEntity isOfType: FASTXMLAttValue).
							stack pop.
						stack pop.
					stack pop.
				
						stack push: (stack top childrenNodes at: 10).
						self assert: self topEntity sourceCode equals: '
    zoomAndPan (disable | magnify) ''''' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTXMLAttDef).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'zoomAndPan'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(disable | magnify)'.
							self assert: (self topEntity isOfType: FASTXMLEnumeration).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'disable'.
								self assert: (self topEntity isOfType: FASTXMLNmtoken).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: 'magnify'.
								self assert: (self topEntity isOfType: FASTXMLNmtoken).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: ''''''.
							self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: ''''''.
								self assert: (self topEntity isOfType: FASTXMLAttValue).
								stack pop.
							stack pop.
						stack pop.
					
							stack push: (stack top childrenNodes at: 12).
							self assert: self topEntity sourceCode equals: '%graphicsElementEvents;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'graphicsElementEvents'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 13).
							self assert: self topEntity sourceCode equals: '%documentEvents;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'documentEvents'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 14).
							self assert: self topEntity sourceCode equals: '
    version %Number; #FIXED "1.0"' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'version'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%Number;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'Number'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '#FIXED "1.0"'.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: '"1.0"'.
									self assert: (self topEntity isOfType: FASTXMLAttValue).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 15).
							self assert: self topEntity sourceCode equals: '
    x %Coordinate; #IMPLIED' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'x'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%Coordinate;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'Coordinate'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '#IMPLIED'.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 16).
							self assert: self topEntity sourceCode equals: '
    y %Coordinate; #IMPLIED' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'y'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%Coordinate;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'Coordinate'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '#IMPLIED'.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 17).
							self assert: self topEntity sourceCode equals: '
    width %Length; #IMPLIED' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'width'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%Length;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'Length'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '#IMPLIED'.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 18).
							self assert: self topEntity sourceCode equals: '
    height %Length; #IMPLIED' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'height'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%Length;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'Length'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '#IMPLIED'.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 19).
							self assert: self topEntity sourceCode equals: '
    contentScriptType %ContentType; "text/ecmascript"' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'contentScriptType'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%ContentType;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'ContentType'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '"text/ecmascript"'.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: '"text/ecmascript"'.
									self assert: (self topEntity isOfType: FASTXMLAttValue).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 20).
							self assert: self topEntity sourceCode equals: '
    contentStyleType %ContentType; "text/css"' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'contentStyleType'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%ContentType;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'ContentType'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '"text/css"'.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: '"text/css"'.
									self assert: (self topEntity isOfType: FASTXMLAttValue).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 5).
						self assert: self topEntity sourceCode equals: '<!ELEMENT desc (#PCDATA %descExt;)* >'.
						self assert: (self topEntity isOfType: FASTXMLElementdecl).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'desc'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(#PCDATA %descExt;)*'.
							self assert: (self topEntity isOfType: FASTXMLContentspec).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '(#PCDATA %descExt;)*'.
								self assert: (self topEntity isOfType: FASTXMLMixed).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '%descExt;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'descExt'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 6).
						self assert: self topEntity sourceCode equals: '<!ELEMENT view (%descTitleMetadata; %viewExt;) >'.
						self assert: (self topEntity isOfType: FASTXMLElementdecl).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'view'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(%descTitleMetadata; %viewExt;)'.
							self assert: (self topEntity isOfType: FASTXMLContentspec).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '(%descTitleMetadata; %viewExt;)'.
								self assert: (self topEntity isOfType: FASTXMLChildren).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 2.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '%descTitleMetadata;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'descTitleMetadata'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 2).
									self assert: self topEntity sourceCode equals: '%viewExt;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'viewExt'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 7).
						self assert: self topEntity sourceCode equals: '<!-- catalog.dtd -->'.
						self assert: (self topEntity isOfType: FASTXMLComment).
						stack pop.
					
						stack push: (stack top childrenNodes at: 8).
						self assert: self topEntity sourceCode equals: '<!ELEMENT %catalog; (%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+>'.
						self assert: (self topEntity isOfType: FASTXMLElementdecl).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '%catalog;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'catalog'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+'.
							self assert: (self topEntity isOfType: FASTXMLContentspec).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '(%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+'.
								self assert: (self topEntity isOfType: FASTXMLChildren).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 11.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '%public;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'public'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 2).
									self assert: self topEntity sourceCode equals: '%system;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'system'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 3).
									self assert: self topEntity sourceCode equals: '%uri;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'uri'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 4).
									self assert: self topEntity sourceCode equals: '%rewriteSystem;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'rewriteSystem'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 5).
									self assert: self topEntity sourceCode equals: '%rewriteURI;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'rewriteURI'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 6).
									self assert: self topEntity sourceCode equals: '%delegatePublic;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'delegatePublic'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 7).
									self assert: self topEntity sourceCode equals: '%delegateSystem;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'delegateSystem'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 8).
									self assert: self topEntity sourceCode equals: '%delegateURI;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'delegateURI'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 9).
									self assert: self topEntity sourceCode equals: '%nextCatalog;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'nextCatalog'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 10).
									self assert: self topEntity sourceCode equals: '%group;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'group'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 11).
									self assert: self topEntity sourceCode equals: '%local.catalog.mix;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'local.catalog.mix'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 9).
						self assert: self topEntity sourceCode equals: '<!ATTLIST %catalog;
    %nsdecl;
    %uriReference; #FIXED ''''urn:oasis:names:tc:entity:xmlns:xml:catalog''''
    prefer %systemOrPublic; #IMPLIED
    xml:base %uriReference; #IMPLIED
    %local.catalog.attribs;>' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTXMLAttlistDecl).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 6.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '%catalog;'.
							self assert: (self topEntity isOfType: FASTXMLPEReference).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'catalog'.
								self assert: (self topEntity isOfType: FASTXMLName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '
    %nsdecl;
    %uriReference; #FIXED ''''' withPlatformLineEndings.
							self assert: (self topEntity isOfType: FASTXMLAttDef).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 3.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '%nsdecl;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'nsdecl'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '%uriReference;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'uriReference'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 3).
								self assert: self topEntity sourceCode equals: '#FIXED '''''.
								self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: ''''''.
									self assert: (self topEntity isOfType: FASTXMLAttValue).
									stack pop.
								stack pop.
							stack pop.
						
								stack push: (stack top childrenNodes at: 4).
								self assert: self topEntity sourceCode equals: '
    prefer %systemOrPublic; #IMPLIED' withPlatformLineEndings.
								self assert: (self topEntity isOfType: FASTXMLAttDef).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 3.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'prefer'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								
									stack push: (stack top childrenNodes at: 2).
									self assert: self topEntity sourceCode equals: '%systemOrPublic;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'systemOrPublic'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 3).
									self assert: self topEntity sourceCode equals: '#IMPLIED'.
									self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 5).
								self assert: self topEntity sourceCode equals: '
    xml:base %uriReference; #IMPLIED' withPlatformLineEndings.
								self assert: (self topEntity isOfType: FASTXMLAttDef).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 3.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'xml:base'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								
									stack push: (stack top childrenNodes at: 2).
									self assert: self topEntity sourceCode equals: '%uriReference;'.
									self assert: (self topEntity isOfType: FASTXMLPEReference).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'uriReference'.
										self assert: (self topEntity isOfType: FASTXMLName).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 3).
									self assert: self topEntity sourceCode equals: '#IMPLIED'.
									self assert: (self topEntity isOfType: FASTXMLDefaultDecl).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 6).
								self assert: self topEntity sourceCode equals: '%local.catalog.attribs;'.
								self assert: (self topEntity isOfType: FASTXMLPEReference).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'local.catalog.attribs'.
									self assert: (self topEntity isOfType: FASTXMLName).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of monovalue relation root"
				self assert: self topEntity root isNotNil.

					stack push: self topEntity root.
					self assert: self topEntity sourceCode equals: '<svg/>'.
					self assert: (self topEntity isOfType: FASTXMLElement).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '<svg/>'.
						self assert: (self topEntity isOfType: FASTXMLEmptyElemTag).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'svg'.
							self assert: (self topEntity isOfType: FASTXMLName).
							stack pop.
						stack pop.
					stack pop.
				self assert: self topEntity source equals: '<!DOCTYPE svg [
  <!-- svg.dtd -->
  <!ELEMENT svg (desc|title|metadata|defs|path|text|rect|circle|ellipse|line|polyline|polygon|use|image|svg|g|view|switch|a|altGlyphDef|script|style|symbol|marker|clipPath|mask|linearGradient|radialGradient|pattern|filter|cursor|font|animate|set|animateMotion|animateColor|animateTransform|color-profile|font-face %ceExt; %svgExt;)* >
  <!ATTLIST svg
    xmlns CDATA #FIXED "http://www.w3.org/2000/svg"
    xmlns:xlink CDATA #FIXED "http://www.w3.org/1999/xlink"
    %stdAttrs;
    %testAttrs;
    %langSpaceAttrs;
    class %ClassList; #IMPLIED
    style %StyleSheet; #IMPLIED
    %PresentationAttributes-All;
    preserveAspectRatio %PreserveAspectRatioSpec; ''''xMidYMid meet''''
    zoomAndPan (disable | magnify) ''''magnify''''
    %graphicsElementEvents;
    %documentEvents;
    version %Number; #FIXED "1.0"
    x %Coordinate; #IMPLIED
    y %Coordinate; #IMPLIED
    width %Length; #IMPLIED
    height %Length; #IMPLIED
    contentScriptType %ContentType; "text/ecmascript"
    contentStyleType %ContentType; "text/css" >
  <!ELEMENT desc (#PCDATA %descExt;)* >
  <!ELEMENT view (%descTitleMetadata; %viewExt;) >
  <!-- catalog.dtd -->
  <!ELEMENT %catalog; (%public;|%system;|%uri;|%rewriteSystem;|%rewriteURI;|%delegatePublic;|%delegateSystem;|%delegateURI;|%nextCatalog;|%group; %local.catalog.mix;)+>
  <!ATTLIST %catalog;
    %nsdecl;
    %uriReference; #FIXED ''''urn:oasis:names:tc:entity:xmlns:xml:catalog''''
    prefer %systemOrPublic; #IMPLIED
    xml:base %uriReference; #IMPLIED
    %local.catalog.attribs;>
]>
<svg/>' withPlatformLineEndings
]

{ #category : 'as yet unclassified' }
FASTXMLImporterTest >> topEntity [ 
 ^ stack top 
]
